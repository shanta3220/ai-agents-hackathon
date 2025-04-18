targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name used to generate a short unique hash for each resource')
param name string


@minLength(1)
@description('Primary location for all resources')
@allowed([
  'eastus'
  'eastus2'
  'northcentralus'
  'southcentralus'
  'swedencentral'
  'westus'
  'westus3'
])
param location string

@description('Id of the user or app to assign application roles')
param principalId string = ''

@description('Flag to decide whether to create OpenAI role for current user')
param createRoleForUser bool = true

param acaExists bool = false
param allowedOrigins string = ''

@description('Name of the existing Azure OpenAI resource')
param openAiAccountName string

@description('Name of the existing OpenAI deployment')
param openAiDeploymentName string

@description('Resource group of the existing Azure OpenAI resource')
param openAiResourceGroupName string

@description('API version of Azure OpenAI to use')
param azureOpenAiApiVersion string = '2024-11-20'

@secure()
@description('API key for the existing Azure OpenAI resource')
param openAiApiKey string

@secure()
param chainlitAuthSecret string

@secure()
param literalApiKey string

@secure()
param assistantPassword string = substring(uniqueString(subscription().id, name, newGuid()), 0, 12)

@description('Whether the deployment is running on GitHub Actions')
param runningOnGh string = ''

var resourceToken = 'a${toLower(uniqueString(subscription().id, name, location))}'
var tags = { 'azd-env-name': name }

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${name}'
  location: location
  tags: tags
}

@description('Name of the existing Container App Environment')
param containerAppEnvironmentName string

@description('Resource group of the existing Container App Environment')
param containerAppEnvironmentResourceGroup string

resource containerAppEnvironment 'Microsoft.App/managedEnvironments@2022-03-01' existing = {
  name: containerAppEnvironmentName
  scope: az.resourceGroup(containerAppEnvironmentResourceGroup)
}

// Reference the existing Azure OpenAI account
resource openAiAccount 'Microsoft.CognitiveServices/accounts@2023-05-01' existing = {
  name: openAiAccountName
  scope: az.resourceGroup(openAiResourceGroupName)
}

// Reference the existing OpenAI deployment
resource openAiDeployment 'Microsoft.CognitiveServices/accounts/deployments@2023-05-01' existing = {
  name: openAiDeploymentName
  parent: openAiAccount
}

// Deployment script module
module deploymentScriptModule 'script.bicep' = {
  name: 'deploymentAssistantScript'
  scope: resourceGroup
  params: {
    openAiEndpoint: openAiAccount.properties.endpoint
    location: location
    openAiApiKey: openAiApiKey
    openAiModel: openAiDeploymentName
  }
}

// Log Analytics Workspace
module logAnalyticsWorkspace 'core/monitor/loganalytics.bicep' = {
  name: 'loganalytics'
  scope: resourceGroup
  params: {
    name: '${resourceToken}-loganalytics'
    location: location
    tags: tags
  }
}

// Container apps host (including container registry)
module containerApps 'core/host/container-apps.bicep' = {
  name: 'container-apps'
  scope: resourceGroup
  params: {
    name: 'app'
    location: location
    tags: tags
    containerAppsEnvironmentName: containerAppEnvironment.name  // Reference the existing environment
    containerRegistryName: '${replace(resourceToken, '-', '')}registry'
    logAnalyticsWorkspaceName: logAnalyticsWorkspace.outputs.name
  }
}

// Container app frontend
module aca 'aca.bicep' = {
  name: 'aca'
  scope: resourceGroup
  params: {
    name: replace('${take(resourceToken,19)}-ca', '--', '-')
    location: location
    tags: tags
    identityName: '${resourceToken}-id-aca'
    containerAppsEnvironmentName: containerAppEnvironment.name  // Reference the existing environment
    containerRegistryName: containerApps.outputs.registryName
    assistantId: deploymentScriptModule.outputs.assistantId
    allowedOrigins: allowedOrigins
    exists: acaExists
    chainlitAuthSecret: chainlitAuthSecret
    literalApiKey: literalApiKey
    openAiEndpoint: openAiAccount.properties.endpoint
    openAiApiKey: openAiApiKey
    azureOpenAiApiVersion: azureOpenAiApiVersion
    openAiDeploymentName: openAiDeploymentName
    userPassword: assistantPassword
  }
}

// Assign OpenAI role to user if specified
module openAiRoleUser 'core/security/role.bicep' = if (createRoleForUser && !empty(principalId)) {
  scope: resourceGroup
  name: 'openai-role-user'
  params: {
    principalId: principalId
    roleDefinitionId: '5e0bd9bd-7b93-4f28-af87-19fc36ad61bd'
    principalType: 'User'
  }
}

// Assign OpenAI role to backend service principal
module openAiRoleBackend 'core/security/role.bicep' = {
  scope: resourceGroup
  name: 'openai-role-backend'
  params: {
    principalId: aca.outputs.SERVICE_ACA_IDENTITY_PRINCIPAL_ID
    roleDefinitionId: '5e0bd9bd-7b93-4f28-af87-19fc36ad61bd'
    principalType: 'ServicePrincipal'
  }
}

// Outputs
output AZURE_LOCATION string = location
output AZURE_OPENAI_CHATGPT_DEPLOYMENT string = openAiDeploymentName
output AZURE_OPENAI_ENDPOINT string = openAiAccount.properties.endpoint
output AZURE_OPENAI_RESOURCE string = openAiAccount.name
output AZURE_OPENAI_RESOURCE_LOCATION string = location
output AZURE_OPENAI_RESOURCE_GROUP string = openAiResourceGroupName
output SERVICE_ACA_IDENTITY_PRINCIPAL_ID string = aca.outputs.SERVICE_ACA_IDENTITY_PRINCIPAL_ID
output SERVICE_ACA_NAME string = aca.outputs.SERVICE_ACA_NAME
output SERVICE_ACA_URI string = aca.outputs.SERVICE_ACA_URI
output SERVICE_ACA_IMAGE_NAME string = aca.outputs.SERVICE_ACA_IMAGE_NAME
output AZURE_CONTAINER_ENVIRONMENT_NAME string = containerApps.outputs.environmentName
output AZURE_CONTAINER_REGISTRY_ENDPOINT string = containerApps.outputs.registryLoginServer
output AZURE_CONTAINER_REGISTRY_NAME string = containerApps.outputs.registryName

#disable-next-line outputs-should-not-contain-secrets // This password is required for the user to access the assistant
output assistantPassword string = assistantPassword

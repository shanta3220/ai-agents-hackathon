#!/bin/bash

# Check if the .env file exists
if [[ ! -f ./src/.env ]]; then
  echo "The .env file does not exist at ./src/.env"
  exit 1
fi

# Load .env file from the src directory
set -o allexport
source ./src/.env
set +o allexport

# Check if required variables are set
if [[ -z "$AZURE_OPENAI_API_KEY" || -z "$AZURE_OPENAI_DEPLOYMENT" || -z "$AZURE_OPENAI_RESOURCE_GROUP" ]]; then
  echo "Missing required environment variables in .env file."
  exit 1
fi

# Run Azure CLI deployment
az deployment sub create \
  --location "$AZURE_OPENAI_RESOURCE_LOCATION" \
  --template-file infra/main.bicep \
  --parameters openAiApiKey="$AZURE_OPENAI_API_KEY" \
               openAiDeploymentName="$AZURE_OPENAI_DEPLOYMENT" \
               openAiResourceGroupName="$AZURE_OPENAI_RESOURCE_GROUP" \
               openAiAccountName="$AZURE_OPENAI_RESOURCE" \
               name="$AZURE_ASSISTANT_NAME" \
               location="$AZURE_OPENAI_RESOURCE_LOCATION" \
               chainlitAuthSecret="$CHAINLIT_AUTH_SECRET" \
               literalApiKey="$LITERAL_API_KEY" \
               containerAppEnvironmentName="$CONTAINER_APP_ENVIRONMENT_NAME" \
               containerAppEnvironmentResourceGroup="$AZURE_OPENAI_RESOURCE_GROUP"
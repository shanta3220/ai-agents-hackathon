# Security Concerns

## Malicious SQL Attacks

A common concern with dynamically generated SQL by LLMs is security, particularly the risk of SQL injection or malicious attempts to drop the database. While these are valid concerns, they can be effectively mitigated by properly configuring database access rights.

For SQLite, this means configuring the database as read-only. For database services like Postgres or Azure SQL, you should assign the application a read-only (Select) role. Running the application in a secure environment adds an extra layer of protection as well.

In enterprise scenarios, data is extracted and transformed from transactional systems into a read-only database or data warehouse with a user friendly schema. This approach ensures the data is secure, optimized for performance, and that the application has read-only access to the data.

## Azure OpenAI Assistants API

It’s crucial to secure the Azure OpenAI resources used in the app with [Azure RBAC](https://learn.microsoft.com/training/modules/secure-azure-resources-with-rbac/) to prevent unauthorized access. Without proper security, anyone with access to the Azure OpenAI Assistants API could interact with the assistant and potentially gain access to sensitive data.

<!-- ## The Azure AI Proxy

The [Azure AI Proxy](https://github.com/microsoft/azure-openai-service-proxy/) provides a secure way to interact with the Azure OpenAI Assistants API. It acts as a middleman between the app and the Azure OpenAI Assistants API, ensuring the API is only accessible to authorized users and that the data exchanged between the app and the API is secure. -->

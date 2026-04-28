# Azure DevOps Variable Groups

This document provides an overview of the variable groups used in Azure DevOps for this project.

## FleetManagement_Infrastructure
This group contains infrastructure-related configuration variables for the Fleet Management application.

| Variable Name | Description |
| :--- | :--- |
| `fm_default-env-suffix` | Default environment suffix (e.g., dev, prod). Used as `env_suffix` in Terraform. |
| `fm_is_local` | Flag indicating if the environment is local. |
| `fm_location` | Azure region for resource deployment. |
| `fm_mssql_server_name` | Base name of the MSSQL Server instance. |
| `fm_resource_group_name` | Name of the shared Azure Resource Group. |
| `fm_suffix` | Suffix for FleetManagement project. |

## Terraform_Backend
This group contains variables required for configuring the Terraform backend state storage.

| Variable Name | Description |
| :--- | :--- |
| `asa_bs_name` | Azure Storage Account Blob Container name for Terraform state. |
| `asa_name` | Azure Storage Account name for Terraform state. |
| `azurerm_service_connection` | Name of the Azure Resource Manager service connection. |
| `location` | Azure region for the backend resources. |
| `resource_group_name` | Resource group where the Terraform backend is located. |

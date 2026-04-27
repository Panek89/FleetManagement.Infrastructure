terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.69.0"
    }
  }

  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "shared_rg" {
  name     = var.shared_resource_group_name
  location = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.shared_rg.name
}

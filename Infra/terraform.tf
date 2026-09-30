terraform {
  required_version = ">= 1.10.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "skillfix150tfstate"
    container_name       = "tfstate"
    key                  = "skillfix.tfstate"
  }
}
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.7.0"
    }
  }

  required_version = ">= 1.1.0"

  # Remote State (Uncomment after provisioning buckets, run "terraform init" to migrate state file.)
  /*   backend "azurerm" {
    resource_group_name  = "test-aks-rg"
    storage_account_name = "testakssa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  } */
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "axrg1"
    storage_account_name = "axsa1"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}
provider "azurerm" {
  features {}

}
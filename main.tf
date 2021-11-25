terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "sa" {
  source = "./modules/storage_account"

  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
}

module "container" {
  source = "./modules/container"

  storage_account_name = module.sa.sa_name
}

output "storage_account" {
  value = module.sa.sa_name
}

output "container" {
  value = module.container.container_name
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "000000-000000-000000-0000000-00000"
  client_id       = "000000-000000-000000-0000000-00000"
  client_secret   = "hBw8Q~EMmeX6H~FzfJHR0jhsdvfksujbkrgufj"
  tenant_id       = "000000-000000-000000-0000000-00000"
  features {}
}

locals {
  resource_group = "test-tfrg"
  location       = "East US"
}


resource "azurerm_resource_group" "test-rg" {
  name     = local.resource_group
  location = local.location
}


terraform {
 backend "azurerm" {
    resource_group_name  = "rg-shweta"
    storage_account_name ="stshweta2026demo"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"

    }

  }
}
provider "azurerm" {
  #alias = "secondary"

  features {}
}
resource "azurerm_resource_group" "rg1" {
  name     = "rg-shweta"
  location = "Central India"
}
resource "azurerm_storage_account" "st1" {
  name                     = "stshweta2026demo"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"

    }

  }
}
provider "azurerm" {
  #alias = "secondary"

  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-sep61"
  location = "Central India"
}

resource "azurerm_resource_group" "rg2" {
  name     = "rg-sept62"
  location = "Central India"
}

resource "azurerm_resource_group" "rg3" {
  name     = "rg-sept63"
  location = "Central India"
}
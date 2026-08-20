terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "5.0.1"
        }
    }


}

provider "azurerm" {
    features{}
}

resource "azurerm_resource_group" "rg1" {
    name = "Testrg1"
    location = "centralindia"
}

resource "azurerm_resource_group" "rg10" {
    name = "Testrg10"
    location = "centralindia"
}

resource "azurerm_resource_group" "rg100" {
    name = "Testrg100"
    location = "centralindia"
}
#Create Resourse group & Storage
provider "azurerm" {
	subscription_id = "541e2514-a47e-4de1-999f-9ac977171cac"
	client_id       = "48906cb6-3310-4089-ae5b-3035e11b00a2"
	client_secret   = "ov5_ywq1XPV_LS1GSC4kD5f2~69F41-ac3"
	tenant_id       = "31ec3635-7019-4fb4-9dd2-817d72966cd8"
	features {}
	}

resource "azurerm_resource_group" "example" {
  name     = "Teja_RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "tejasa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  } 
}

 
// Provider configuration
provider "azurerm" {
  features {}
}

// Resource block for creating a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "West US"
}

// Resource block for creating a storage account
resource "azurerm_storage_account" "example" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

// Output block to display the storage account connection string
output "storage_account_connection_string" {
  value = azurerm_storage_account.example.primary_connection_string
}

//Here's what each part of the code does:

//provider "azurerm": This block configures the Azure provider for Terraform. The features {} block is required by the Azure provider, but doesn't need to contain anything.

//resource "azurerm_resource_group" "example": This block creates a resource group in Azure. The name and location parameters specify the name and location of the resource group.

//resource "azurerm_storage_account" "example": This block creates a storage account in Azure. The name, resource_group_name, location, account_tier, and account_replication_type parameters specify the name, resource group, location, performance tier, and replication type of the storage account, respectively. The azurerm_resource_group.example.name and azurerm_resource_group.example.location expressions get the name and location of the resource group that was created earlier.
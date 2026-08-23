# 1. Resource Group
resource "azurerm_resource_group" "rg1"{
  name     = "Sahabrg1"
  location = "central india"
}
# 2. Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = "sahabstorage2026" # Must be globally unique, lowercase letters and numbers only
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Environment = "Practice"
    CreatedBy   = "Sahab"
  }
}
# 3. Storage Blob Container
resource "azurerm_storage_container" "containe0" {
  name                  = "sahab-container" # Lowercase and hyphens only (no spaces)
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}

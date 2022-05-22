resource "azurerm_resource_group" "tomek" {
  name     = "Tomek"
  location = "Wast Europe"
}

resource "azurerm_storage_account" "tomek" {
  name                     = var.account_name
  resource_group_name      = azurerm_resource_group.tomek.name
  location                 = azurerm_resource_group.tomek.location
  account_tier             = var.access_tier
  account_replication_type = var.replication_type

}

resource "azurerm_storage_container" "tomek" {
  name                  = var.azurerm_storage_container_name
  storage_account_name  = azurerm_storage_account.tomek.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "tomek" {
  name                   = var.azurerm_storage_blob_name
  storage_account_name   = azurerm_storage_account.tomek.name
  storage_container_name = azurerm_storage_container.tomek.name
  type                   = var.blob_type
}
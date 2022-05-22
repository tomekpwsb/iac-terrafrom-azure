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

resource "azurerm_service_plan" "tomek" {
  name                = var.azurerm_service_plan_name
  resource_group_name = azurerm_resource_group.tomek.name
  location            = azurerm_resource_group.tomek.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_function_app" "tomek" {
  name                = var.linux_function_app_name
  resource_group_name = azurerm_resource_group.tomek.name
  location            = azurerm_resource_group.tomek.location

  storage_account_name = azurerm_storage_account.tomek.name
  service_plan_id      = azurerm_service_plan.tomek.id

  site_config {}
}

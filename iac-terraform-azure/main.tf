resource "azurerm_resource_group" "example" {
  name     = var.azurerm_resource_group_name
  location = var.azurerm_resource_group_location
}
resource "azurerm_storage_account" "example" {
  name                     = var.azurerm_storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

}
resource "azurerm_service_plan" "example" {
  name                = var.azurerm_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_function_app" "example" {
  name                = var.linux-function-app-name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  storage_account_name = azurerm_storage_account.example.name
  service_plan_id      = azurerm_service_plan.example.id

  site_config {}
}
resource "azurerm_app_configuration" "app_configuration" {
  name                = "appconf-${var.env_suffix}-${var.location}"
  resource_group_name = azurerm_resource_group.shared_rg.name
  location            = azurerm_resource_group.shared_rg.location
  sku                 = "free"
}

resource "azurerm_role_assignment" "appconf_data_owner" {
  scope                = azurerm_app_configuration.app_configuration.id
  role_definition_name = "App Configuration Data Owner"
  principal_id         = data.azurerm_client_config.current.object_id
}

resource "random_password" "sql_admin_password" {
  length           = 24
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "azurerm_mssql_server" "mssql_server" {
  name                         = "${var.mssql_server_name}-${var.env_suffix}"
  resource_group_name          = azurerm_resource_group.shared_rg.name
  location                     = azurerm_resource_group.shared_rg.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = random_password.sql_admin_password.result

  depends_on = [azurerm_app_configuration.app_configuration]
}

resource "azurerm_app_configuration_key" "mssql_password_key" {
  configuration_store_id = azurerm_app_configuration.app_configuration.id
  key                    = "Mssql:AdminPassword"
  type                   = "kv"
  label                  = var.env_suffix
  value                  = random_password.sql_admin_password.result

  depends_on = [azurerm_mssql_server.mssql_server, azurerm_role_assignment.appconf_data_owner]
}

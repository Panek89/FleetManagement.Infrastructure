output "resource_group_name" {
  value = azurerm_resource_group.shared_rg.name
}

output "app_configuration_name" {
  value = azurerm_app_configuration.app_configuration.name
}

output "mssql_server_name" {
  value = azurerm_mssql_server.mssql_server.name
}

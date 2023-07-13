resource "azurerm_postgresql_flexible_server_database" "default" {
  for_each  = var.subnet_prefix
  name      = "postgres-flexi-test-db"
  server_id = azurerm_postgresql_flexible_server.default.id
  collation = "en_US.UTF8"
  charset   = "UTF8"
}
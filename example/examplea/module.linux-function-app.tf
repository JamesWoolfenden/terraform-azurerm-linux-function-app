module "linux-function-app" {
  source      = "../../"
  common_tags = var.common_tags
  name        = "pike-linux-function"
  rg_name     = azurerm_resource_group.function.name
  location    = azurerm_resource_group.function.location

  storage_account_name      = azurerm_storage_account.function.name
  virtual_network_subnet_id = azurerm_subnet.integration.id

  slots = {
    staging = {}
  }
}

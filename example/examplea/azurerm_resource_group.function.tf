resource "azurerm_resource_group" "function" {
  name     = "pike-linux-function"
  location = "uk south"
  tags     = var.common_tags
}

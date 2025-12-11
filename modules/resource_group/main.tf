resource "azurerm_resource_group" "this" {
  name     = "${var.prefix}-${var.environment}-rg"
  location = var.location
  tags     = var.tags
}
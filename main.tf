resource "azurerm_resource_group" "dev-rg" {
  name     = "dev-rg"
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "prod-rg" {
  name     = "prod-rg"
  location = var.location
  tags     = var.tags
}
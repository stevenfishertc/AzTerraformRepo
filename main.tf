resource "azurerm_resource_group" "dev-rg" {
  name     = "steven-dev-rg"
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "prod-rg" {
  name     = "steven-prod-rg"
  location = var.location
  tags     = var.tags
}
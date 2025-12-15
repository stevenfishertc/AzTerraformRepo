resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# resource "azurerm_key_vault" "env" {
#   name                = "${var.prefix}-${var.environment}-kv"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   tenant_id           = data.azurerm_client_config.current.tenant_id
#   sku_name            = "standard"

#   purge_protection_enabled = true
#   soft_delete_retention_days = 7
# }
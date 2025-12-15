output "ssh_public_key" {
  value = tls_private_key.ssh.public_key_openssh
}

# output "key_vault_id" {
#   value = azurerm_key_vault.env.id
# }
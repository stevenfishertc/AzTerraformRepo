resource "azurerm_linux_virtual_machine" "vm" {
  name                = "${var.prefix}-${var.environment}-${var.vm_name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_user
  network_interface_ids = [var.nic_id]

  identity {
    type = "SystemAssigned"
  }

  admin_ssh_key {
    username   = var.admin_user
    public_key = var.ssh_public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

# resource "azurerm_role_assignment" "vm_kv_access" {
#   scope                = var.key_vault_id
#   role_definition_name = "Key Vault Secrets User"
#   principal_id         = azurerm_linux_virtual_machine.vm.identity[0].principal_id
# }
# resource "azurerm_virtual_network" "vnet" {
#   name                = var.vnet_name
#   address_space       = var.address_space
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

# resource "azurerm_subnet" "subnet" {
#   for_each = var.subnets
#   name                 = each.key
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = each.value
# }

# resource "azurerm_network_interface" "vm_nic" {
#   name                = "$web-nic"
#   location            = var.location
#   resource_group_name = var.resource_group_name

#   ip_configuration {
#     name                          = "primary"
#     subnet_id                     = azurerm_subnet.subnet["web"].id
#     private_ip_address_allocation = "Dynamic"
#   }
# }
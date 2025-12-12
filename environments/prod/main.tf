module "rg" {
  source   = "../../modules/resource_group"

  prefix   = var.prefix
  environment = var.environment
  location = var.location
  tags     = var.tags
}

# module "network" {
#   source              = "../../modules/network"

#   resource_group_name = module.rg.name
#   vnet_name           = var.vnet_name
#   address_space       = var.address_space
#   subnets             = var.subnets
#   location            = var.location
# }

# module "compute" {
#   source              = "../../modules/compute"

#   name               = "StevensVM"
#   resource_group_name = module.rg.name
#   location           = var.location
#   admin_user         = "steven"
#   ssh_key_path       = "~/.ssh/id_rsa.pub"
#   nic_id             = module.network.nic_id
# }
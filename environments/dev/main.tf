module "rg" {
  source   = "../../modules/resource_group"

  prefix   = var.prefix
  environment = var.environment
  location = var.location
  tags     = var.tags
}

module "secrets" {
  source   = "../../modules/secrets"

  prefix   = var.prefix
  environment = var.environment
  resource_group_name = module.rg.name
}

module "network" {
  source              = "../../modules/network"

  prefix              = var.prefix
  environment         = var.environment
  resource_group_name = module.rg.name
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnets             = var.subnets
  location            = var.location
}

module "compute" {
  source              = "../../modules/compute"

  prefix             = var.prefix
  environment        = var.environment
  vm_name            = "VM"
  resource_group_name = module.rg.name
  location           = var.location
  admin_user         = "steven"
  ssh_public_key     = module.secrets.ssh_public_key
  # key_vault_id       = module.secrets.key_vault_id
  nic_id             = module.network.nic_id
}
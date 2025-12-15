prefix  = "steven"
environment = "dev"
location = "eastus2"
tags = {
  environment = "dev"
  owner       = "steven-fisher"
}

vnet_name     = "steven-dev-vnet"
address_space = ["158.10.0.0/16"]

subnets = {
  web = ["158.10.1.0/24"]
  app = ["158.10.2.0/24"]
  db  = ["158.10.3.0/24"]
}
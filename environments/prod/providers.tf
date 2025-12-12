provider "azurerm" {
  subscription_id = "606e824b-aaf7-4b4e-9057-b459f6a4436d"
  features {}
  use_cli = true
}

terraform {
  backend "azurerm" {
    resource_group_name  = "steven-tfstate-rg"
    storage_account_name = "steven-tfstateaccount"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"   # prod folder
  }
}
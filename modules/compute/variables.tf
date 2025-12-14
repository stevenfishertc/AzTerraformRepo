variable "prefix" {}
variable "environment" {}
variable "vm_name" {}
variable "resource_group_name" {}
variable "location" {}
variable "vm_size" {
  default = "Standard_B1s"
}
variable "admin_user" {
  default = "azureuser"
}
variable "ssh_key_path" {}
variable "nic_id" {}
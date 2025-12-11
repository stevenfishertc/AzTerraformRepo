variable "prefix" {
  type = string
  default = "steven"
}
variable "environment" { 
  type = string 
}
variable "location" {
  type = string
  default = "eastus"
}
variable "tags" { type = map(string) }

variable "vnet_name" {}
variable "address_space" { type = list(string) }
variable "subnets" {
  type = map(list(string))
}


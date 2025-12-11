variable "prefix" {
  type = string
  default = "steven"
}

variable "environment" {
  type = string
  default = "test"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "tags" {
  type    = map(string)
  default = {}
}
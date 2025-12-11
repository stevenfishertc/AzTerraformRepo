variable "name" {
  type = string
  default = "default-rg"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "tags" {
  type    = map(string)
  default = {}
}
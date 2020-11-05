#############################################################################
# VARIABLES
#############################################################################

variable "resource_group_name" {
  type = string
  default = "simple-virtual-network"
//  default = "simple-virtual-network"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "vnet_cidr_range" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet_names" {
  type    = list(string)
  default = ["public", "private"]
}

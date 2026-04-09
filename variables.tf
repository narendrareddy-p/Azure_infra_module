variable "rg_name" {
  description = "Name of the Resource Group"
  type        = map(string)
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}

variable "address_space" {
    description = "Space of the virtual network"
    type = list(string)
  
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type = string
}
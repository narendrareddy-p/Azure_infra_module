## Resource Group
module "resource-group" {
    source = "git::https://github.com/narendrareddy-p/modules.git//resource-group?ref=feature"
    resource_group_name = var.rg_name
    location = var.location
  
}
##virtual Network
module "virtual-network" {
  source = "git::https://github.com/narendrareddy-p/modules.git//virtual-network?ref=feature"
  vnet_name = var.vnet_name
  resource_group_name = var.rg_name
  location = var.location
  address_space = var.address_space

}
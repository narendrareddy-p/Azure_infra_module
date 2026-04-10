## Resource Group
module "resource-group" {
    source = "git::https://github.com/narendrareddy-p/modules.git//resource-group?ref=feature"
    resource_group_name = var.rg_name["app-team"]
    location = var.location
  
}
module "resource-group-db" {
   
    source = "git::https://github.com/narendrareddy-p/modules.git//resource-group?ref=feature"
    resource_group_name = var.rg_name["db-team"]
    location = var.location
  
}
##virtual Network
module "virtual-network" {
  source = "git::https://github.com/narendrareddy-p/modules.git//virtual-network?ref=feature"
  vnet_name = var.vnet_name
  resource_group_name = var.rg_name["app-team"]
  location = var.location
  address_space = var.address_space
  subnet_name = var.subnet_name
  address_prefixes =  var.address_prefixes
  publicip_name = var.publicip_names
  depends_on = [ module.resource-group ]
  

}

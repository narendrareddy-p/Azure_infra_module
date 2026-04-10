## Resource Group
module "resource-group" {
    source = "git::https://github.com/narendrareddy-p/modules.git//resource-group?ref=feature"
    resource_group_name = var.rg_name["app-team"]
    location = var.location
  
}
module "resource-group-db" {
    count = 3
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
  depends_on = [ module.resource-group ]

}

##subnet
module "subnets" {
   source = "git::https://github.com/narendrareddy-p/modules.git//virtual-network?ref=feature"
   resource_group_name = var.rg_name["app-team"]
   subnet_name = var.subnet_name
   vnet_name = var.vnet_name
   address_prefixes =  var.address_prefixes
  
}
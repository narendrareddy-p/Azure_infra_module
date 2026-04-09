module "resource-group" {
    source = "git::https://github.com/narendrareddy-p/modules.git//resource-group?ref=feature"
    resource_group_name = var.rg_name
    location = var.location
  
}

module "virtual-network" {
  source = "git::https://github.com/narendrareddy-p/modules.git//virtual-network?ref=feature"
  
}
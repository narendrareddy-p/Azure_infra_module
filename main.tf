module "resource-group" {
    source = "git::https://github.com/narendrareddy-p/modules.git//resource-group?ref=feature"
    resource_group = var.resource_group
    location = var.location
  
}
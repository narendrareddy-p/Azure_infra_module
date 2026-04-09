
output "resource-group" {
  description = "Name of the resource group"
  value = module.resource-group.name
  
}

output "location" {
  description = "Resource Group Location"
  value = module.resource-group.location
}

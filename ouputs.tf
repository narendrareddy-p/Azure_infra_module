
output "resource-group" {
  description = "Name of the resource group"
  value = azurerm_resource_group.resource_group.name
  
}

output "location" {
  description = "Resource Group Location"
  value = azurerm_resource_group.resource_group.location
}

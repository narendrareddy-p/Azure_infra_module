output "resource_group" {
  description = "Resource Group Name"
  value = azurerm_resource_group.rg.rg_name
}

output "rg_id" {
  description = "Resource Group ID"
  value = azurerm_resource_group.rg.id
}

output "location" {
  description = "Resource Group Location"
  value = azurerm_resource_group.rg.location
}
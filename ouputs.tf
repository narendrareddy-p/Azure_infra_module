output "resource_group" {
  description = "Resource Group Name"
  value = azurerm_resource_group.rg.rg_name
}


output "location" {
  description = "Resource Group Location"
  value = azurerm_resource_group.rg.location
}
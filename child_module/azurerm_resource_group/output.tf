output "resource_group_id" {
  description = "Resource group IDs"
  value = {
    for name, rg in azurerm_resource_group.rg : name => rg.id
  }
}
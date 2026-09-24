output "subnet_id" {
  description = "Subnet IDs keyed by subnet name"
  value = {
    for name, subnet in azurerm_subnet.axionsubnet : name => subnet.id
  }
}
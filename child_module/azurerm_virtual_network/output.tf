output "vnet_id" {
  value = {
    for name, vnet in azurerm_virtual_network.vnet : name => vnet.id
  }
}
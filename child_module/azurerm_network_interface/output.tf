output "nic_id" {
  description = "NIC IDs keyed by NIC name"
  value = {
    for name, nic in azurerm_network_interface.nic : name => nic.id
  }
}



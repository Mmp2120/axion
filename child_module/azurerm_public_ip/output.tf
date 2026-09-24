output "public_ip_id" {
  description = "Public IP IDs keyed by public IP name"
  value = {
    for name, pip in azurerm_public_ip.pip : name => pip.id
  }
}
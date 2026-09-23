resource "azurerm_virtual_machine" "axionvms" {
  for_each            = var.vms
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  vm_size             = each.value.vm_size
  subnet_name         = each.value.subnet_name
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password

}
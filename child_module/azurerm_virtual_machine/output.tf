output "vm_id" {
  description = "Virtual machine IDs"
  value = {
    for name, vm in azurerm_windows_virtual_machine.vm : name => vm.id
  }
}
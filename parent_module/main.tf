module "resource_group_name" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}
module "storage_name" {
  depends_on = [module.resource_group_name]
  source     = "../child_module/azurerm_storage_account"
  sas        = var.sas
}
module "virtual_network" {
  source = "../child_module/azurerm_vitrual_network"
  vnet   = var.vnet
  subnet = var.subnet
}
module "virtual_machine" {
  source = "../child_module/azurerm_vitrual_machine"
  vms    = var.vms
}
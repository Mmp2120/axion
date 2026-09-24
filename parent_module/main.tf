module "resource_group" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}
module "azurerm_storage_account" {
  depends_on = [ module.resource_group ]
  source = "../child_module/azurerm_storage_account"
  sas=var.sas
}
module "virtual_network" {
  depends_on = [ module.resource_group ]
  source = "../child_module/azurerm_virtual_network"
  vnet   = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../child_module/azurerm_subnet"
  subnet     = var.subnet
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../child_module/azurerm_public_ip"
  public_ip  = var.public_ip
}


module "network_interface" {
  depends_on = [module.subnet, module.public_ip]
  source     = "../child_module/azurerm_network_interface"

  nic         = var.nic
  subnet_id   = module.subnet.subnet_id
  public_ip_id = module.public_ip.public_ip_id
}

module "virtual_machine" {
  depends_on = [module.network_interface]
  source     = "../child_module/azurerm_virtual_machine"

  vms    = var.vms
  nic_id = module.network_interface.nic_id
}
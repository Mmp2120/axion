rgs = {
  rg1 = {
    resource_group_name = "axrg1"
    location            = "eastus"
  }
  rg2 = {
    resource_group_name = "axrg2"
    location            = "eastus"
  }
}
sas = {
  sa1 = {
    name                     = "axsa1"
    resource_group_name      = "axrg1"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "axsa2"
    resource_group_name      = "axrg2"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet = {
  vnet1 = {
    name                = "axionvnet"
    resource_group_name = "axrg1"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "axionforntend"
    resource_group_name  = "axrg1"
    virtual_network_name = "axionvnet"
    address_prefixes     = ["10.1.0.0/24"]
  }
  subnet2 = {
    name                 = "axionbackend"
    resource_group_name  = "axrg1"
    virtual_network_name = "axionvnet"
    address_prefixes     = ["10.2.0.0/24"]
  }
}
vms = {
  axionforntend_vm = {
    name                = "axionforntend-vm"
    resource_group_name = "axrg1"
    location            = "eastus"
    vm_size             = "Standard_DS1_v2"
    subnet_name         = "axionforntend_subnet"
    admin_username      = "mohitpt20"
    admin_password      = "Mohit@8090"
  }

  axionbackend_vm = {
    name                = "axionbackend-vm"
    resource_group_name = "axrg1"
    location            = "eastus"
    vm_size             = "Standard_DS1_v2"
    subnet_name         = "axionbackend_subnet"
    admin_username      = "mohitpt20"
    admin_password      = "Mohit@8090"
  }
}
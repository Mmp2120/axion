rgs = {
  rg1 = {
    name     = "axrg"
    location = "eastus"
  }
}
sas={
  sa1={
    name="axsa"
    resource_group_name="axrg"
    location="eastus"
    account_tier="Standard"
    account_replication_type="LRS"
  }
}
vnet = {
  vnet1 = {
    name                = "axionvnet"
    location            = "eastus"
    resource_group_name = "axrg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  axionfrontend = {
    name                 = "axionfrontend"
    resource_group_name  = "axrg"
    virtual_network_name = "axionvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  axionbackend = {
    name                 = "axionbackend"
    resource_group_name  = "axrg"
    virtual_network_name = "axionvnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

public_ip = {
  pip1 = {
    name                = "axionfrontend-pip"
    location            = "eastus"
    resource_group_name = "axrg"
    allocation_method   = "Static"
    sku                 = "Standard"
  }

  pip2 = {
    name                = "axionbackend-pip"
    location            = "eastus"
    resource_group_name = "axrg"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

nic = {
  nic1 = {
    name                          = "axionfrontend-nic"
    location                      = "eastus"
    resource_group_name           = "axrg"
    subnet_name                   = "axionfrontend"
    public_ip_name                = "pip1"
    ip_configuration_name         = "internal"
    private_ip_address_allocation = "Dynamic"
  }

  nic2 = {
    name                          = "axionbackend-nic"
    location                      = "eastus"
    resource_group_name           = "axrg"
    subnet_name                   = "axionbackend"
    public_ip_name                = "pip2"
    ip_configuration_name         = "internal"
    private_ip_address_allocation = "Dynamic"
  }
}

vms = {
  vm1 = {
    name                = "axionfrontendvm"
    location            = "eastus"
    resource_group_name = "axrg"
    vm_size             = "Standard_D2als_v7"
    admin_username      = "mohitpt20"
    admin_password      = "Mohit8090@"
    nic_name            = "nic1"
  }
  vm2 = {
    name                = "axionbackendvm"
    location            = "eastus"
    resource_group_name = "axrg"
    vm_size             = "Standard_D2als_v7"
    admin_username      = "mohitpt20"
    admin_password      = "Mohit8090@"
    nic_name            = "nic2"
  }
}
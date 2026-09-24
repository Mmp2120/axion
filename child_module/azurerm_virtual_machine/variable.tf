variable "vms" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    vm_size             = string
    admin_username      = string
    admin_password      = string
    nic_name            = string
  }))
}

variable "nic_id" {
  type = map(string)
}
variable "nic" {
  type = map(object({
    name                          = string
    location                      = string
    resource_group_name           = string
    subnet_name                   = string
    public_ip_name                = optional(string)
    ip_configuration_name         = string
    private_ip_address_allocation = string
  }))
}

variable "subnet_id" {
  type = map(string)
}

variable "public_ip_id" {
  type = map(string)
}

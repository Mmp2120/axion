resource "azurerm_storage_account" "axionsa"{
    for_each = var.sas
    name=each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}
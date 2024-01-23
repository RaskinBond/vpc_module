resource "azurerm_resource_group" "my_rsg" {
    name     = var.az_rg.name
    location = var.az_rg.location
}
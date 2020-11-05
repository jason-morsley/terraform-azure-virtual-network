resource "azurerm_resource_group" "example" {
  name     = "simple-virtual-network"
  location = var.location
}
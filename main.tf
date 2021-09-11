## ResourceGroup

#Azure Provider
provider "azurerm" {
  version = "=2.28.0"
  features {}
}




resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.region_name
  tags = var.tags
}

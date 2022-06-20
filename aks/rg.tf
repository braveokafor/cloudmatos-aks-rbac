resource "azurerm_resource_group" "resource-group" {
  name     = var.resource-group-name
  location = var.resource-group-location

  tags = {
    environment = var.environment
    maintainer  = var.maintainer
    location    = var.resource-group-location
  }
}

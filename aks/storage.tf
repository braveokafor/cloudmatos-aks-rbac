# UNCOMMENT IF YOU INTEND TO USE REMOTE STATE

/* resource "azurerm_storage_account" "storage-account" {
  name                            = var.storage-account-name
  resource_group_name             = azurerm_resource_group.resource-group.name
  location                        = azurerm_resource_group.resource-group.location
  account_tier                    = var.storage-account-tier
  account_replication_type        = var.storage-account-replication-type
  allow_nested_items_to_be_public = true

  tags = {
    environment = var.environment
    maintainer  = var.maintainer
    location    = var.resource-group-location
  }
} */

/* resource "azurerm_storage_container" "tfstate-storage-container" {
  name                  = var.tfstate-storage-container-name
  storage_account_name  = azurerm_storage_account.storage-account.name
  container_access_type = "blob"
}
 */
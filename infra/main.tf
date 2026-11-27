resource "azurerm_storage_account" "flight_logs" {
  name                     = "demoflightlogs01"
  resource_group_name      = "rg-sas-demo-prod"
  location                 = "westeurope"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = true
}

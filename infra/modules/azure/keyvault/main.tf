resource "azurerm_key_vault" "kv" {
  name                        = "${var.project_name}-vault"
  location                    = var.location
  resource_group_name          = var.resource_group_name
  sku_name                    = "standard"
  tenant_id                   = var.tenant_id
  soft_delete_retention_days   = 7
  purge_protection_enabled     = false
  public_network_access_enabled = true
}

output "keyvault_id" {
  value = azurerm_key_vault.kv.id
}

output "keyvault_uri" {
  value = azurerm_key_vault.kv.vault_uri
}

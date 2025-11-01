output "network_contributor_id" {
  value       = azurerm_role_assignment.network_contributor.id
  description = "Network Contributor Role Assignment ID"
}

output "keyvault_officer_id" {
  value       = azurerm_role_assignment.keyvault_officer.id
  description = "KeyVault Secrets Officer Role Assignment ID"
}

output "acr_pull_id" {
  value       = azurerm_role_assignment.acr_pull.id
  description = "AcrPull Role Assignment ID"
}



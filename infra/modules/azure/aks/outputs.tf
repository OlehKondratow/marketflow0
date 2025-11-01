output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "aks_kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}

# 🆕 Это нужный output, которого не хватает
output "aks_identity_principal_id" {
  value       = azurerm_kubernetes_cluster.aks.identity[0].principal_id
  description = "The principal (object) ID of the AKS managed identity"
}

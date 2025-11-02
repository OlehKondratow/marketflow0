```
acr_admin_password = <sensitive>
acr_admin_username = <sensitive>
acr_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.ContainerRegistry/registries/marketflow0acrce38"
acr_login_server = "marketflow0acrce38.azurecr.io"
aks_fqdn = "marketflow0-dns-vra1uzuy.hcp.northeurope.azmk8s.io"
aks_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.ContainerService/managedClusters/marketflow0-aks"
aks_kube_admin_config = <sensitive>
aks_principal_id = "bf36acb2-d554-4fc1-8b9c-e4fb651156ab"
keyvault_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.KeyVault/vaults/marketflow0-vault"
keyvault_uri = "https://marketflow0-vault.vault.azure.net/"
role_assignments_summary = {
  "acr_role_id" = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.ContainerRegistry/registries/marketflow0acrce38/providers/Microsoft.Authorization/roleAssignments/32172084-dac6-594b-aaf7-35678c1e4130"
  "keyvault_role_id" = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.KeyVault/vaults/marketflow0-vault/providers/Microsoft.Authorization/roleAssignments/5d3868e7-29fd-44d7-f315-f04e33d67755"
}
storage_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.Storage/storageAccounts/marketflow0stord6e2"
storage_primary_blob_endpoint = "https://marketflow0stord6e2.blob.core.windows.net/"
subnet_dev_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.Network/virtualNetworks/marketflow0-vnet/subnets/aks-subnet-dev"
subnet_prod_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.Network/virtualNetworks/marketflow0-vnet/subnets/aks-subnet-prod"
vnet_id = "/subscriptions/65fe7e97-9f6f-4f82-b940-4f374ca027cb/resourceGroups/marketflow0-rg/providers/Microsoft.Network/virtualNetworks/marketflow0-vnet"
```

terraform apply -target=module.kubernetes_dev.helm_release.cert_manager
terraform apply -target=module.kubernetes_dev.kubernetes_manifest.homelab_ca_issuer
terraform apply -target=module.kubernetes_dev.kubernetes_manifest.letsencrypt_staging

```
az network public-ip list --resource-group marketflow0-rg --output table
Name                 ResourceGroup    Location     Zones    Address        IdleTimeoutInMinutes    ProvisioningState
-------------------  ---------------  -----------  -------  -------------  ----------------------  -------------------
marketflow0-dev-ip   marketflow0-rg   northeurope           4.210.65.14    4                       Succeeded
marketflow0-prod-ip  marketflow0-rg   northeurope           128.251.42.38  4                       Succeeded
```

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

provider "kubernetes" {
  host                   = module.aks.aks_fqdn
  client_certificate     = base64decode(module.aks.aks_kube_admin_config["client_certificate"])
  client_key             = base64decode(module.aks.aks_kube_admin_config["client_key"])
  cluster_ca_certificate = base64decode(module.aks.aks_kube_admin_config["cluster_ca_certificate"])
}

provider "helm" {
  kubernetes {
    host                   = module.aks.aks_fqdn
    client_certificate     = base64decode(module.aks.aks_kube_admin_config["client_certificate"])
    client_key             = base64decode(module.aks.aks_kube_admin_config["client_key"])
    cluster_ca_certificate = base64decode(module.aks.aks_kube_admin_config["cluster_ca_certificate"])
  }
}
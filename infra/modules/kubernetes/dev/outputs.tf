module "kubernetes_dev" {
  source = "../../modules/kubernetes/dev"

  resource_group_name  = azurerm_resource_group.rg.name
  cloudflare_api_token = var.cloudflare_api_token
  cloudflare_email     = var.cloudflare_email
  letsencrypt_email    = var.letsencrypt_email
  domain               = "dev.marketflow.ai"

  providers = {
    kubernetes = kubernetes
    helm       = helm
  }

  depends_on = [module.aks]
}

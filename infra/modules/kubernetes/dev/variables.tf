variable "resource_group_name" {
  type        = string
  description = "Azure resource group where the AKS cluster resides"
}

variable "cloudflare_api_token" {
  type        = string
  sensitive   = true
  description = "Cloudflare API token for DNS challenge"
}

variable "cloudflare_email" {
  type        = string
  description = "Cloudflare account email"
}

variable "letsencrypt_email" {
  type        = string
  description = "Email address for Let's Encrypt registration"
}

variable "domain" {
  type        = string
  description = "Base domain for ingress resources (e.g., dev.marketflow.ai)"
}

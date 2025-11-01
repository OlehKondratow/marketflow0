variable "resource_group_name" { type = string }
variable "prod_ingress_ip" { type = string }
variable "cloudflare_email" { type = string }
variable "cloudflare_api_token" { type = string; sensitive = true }
variable "letsencrypt_email" { type = string }

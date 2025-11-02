variable "resource_group_name" {
  type        = string
  description = "Azure resource group where the AKS cluster resides"
}


variable "domain" {
  type        = string
  description = "Base domain for ingress resources (e.g., dev.marketflow.ai)"
}

variable "dev_ingress_ip" { type = string }
variable "ca_crt_b64" { type = string }
variable "ca_key_b64" {
  type      = string
  sensitive = true
}


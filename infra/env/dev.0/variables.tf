variable "location" {
  description = "Azure region"
  default     = "westeurope"
}

variable "prefix" {
  description = "Prefix for resources"
  default     = "marketflow"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "project_name" {
  description = "Project name prefix used for all resources"
  type        = string
  default     = "marketflow"
}

variable "user_object_id" {
  description = "Azure AD object ID of user for KeyVault access (role assignment)"
  type        = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "office_ip" {
  type        = string
  description = "Public static IP address of the office for dev ingress access"
}


variable "log_analytics_id" {
  type        = string
  description = "Log Analytics Workspace ID (optional)"
  default     = ""
}
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
}

variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID for Azure AD."
  type        = string
}

variable "object_id" {
  description = "Object ID for Azure AD access policy."
  type        = string
}

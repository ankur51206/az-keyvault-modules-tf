output "key_vault_id" {
  description = "The ID of the Key Vault."
  value       = module.key_vault.key_vault_id
}

output "key_vault_uri" {
  description = "The URI of the Key Vault."
  value       = module.key_vault.key_vault_uri
}
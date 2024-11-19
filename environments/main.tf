module "resource_group" {
  source              = "Azure/resource-group/azurerm"
  version             = "2.0.0"
  resource_group_name = "${var.resource_group_name}-${var.environment_name}"
  location            = var.location
}

module "key_vault" {
  source              = "Azure/key-vault/azurerm"
  version             = "2.0.0"
  resource_group_name = module.resource_group.name
  location            = var.location
  key_vault_name      = "${var.key_vault_name}-${var.environment_name}"
  tenant_id           = var.tenant_id
  object_id           = var.object_id
  depends_on          = [module.resource_group]
}

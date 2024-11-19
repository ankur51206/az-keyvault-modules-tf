module "resource_group" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.1.0"
  name = "${var.resource_group_name}-${var.environment_name}"
  location            = var.location
}

module "avm-res-keyvault-vault" {
  source              = "Azure/avm-res-keyvault-vault/azurerm"
  version             = "0.9.1"
  resource_group_name = module.resource_group.name
  location            = var.location
  name                = "${var.key_vault_name}-${var.environment_name}"
  tenant_id           = var.tenant_id
  legacy_access_policies_enabled = true
  legacy_access_policies = {
    test = {
      object_id          = var.object_id
      tenant_id          = var.tenant_id
      secret_permissions = ["Get", "List"]
    }
  }
  depends_on          = [module.resource_group]
}

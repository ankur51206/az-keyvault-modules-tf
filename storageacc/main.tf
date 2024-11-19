module "resource_group" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.1.0"
  name = "${var.resource_group_name}-${var.environment_name}"
  location            = var.location
}



module "avm-res-storageaccount" {
  source              = "Azure/avm-res-storage-storageaccount/azurerm"
  version             = "0.2.7"  # You can specify the latest version
  resource_group_name = module.resource_group.name
  location            = var.location
  name                = "${var.storage_account_name}-${var.environment_name}"
  sku                  = "Standard_LRS"
  kind                 = "StorageV2"
  enable_https_traffic_only = true
  depends_on          = [module.resource_group]
}

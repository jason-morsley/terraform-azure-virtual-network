#############################################################################
# RESOURCES
#############################################################################

module "vnet-main" {
  source              = "Azure/vnet/azurerm"
  resource_group_name = var.resource_group_name
  address_space       = [var.vnet_cidr_range]
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names

//  subnet_service_endpoints = {
//    subnet2 = ["Microsoft.Storage", "Microsoft.Sql"],
//    subnet3 = ["Microsoft.AzureActiveDirectory"]
//  }

  //  tags = {
//    environment = "dev"
//    costcenter  = "it"
//
//  }
  
  depends_on = [azurerm_resource_group.example]
}
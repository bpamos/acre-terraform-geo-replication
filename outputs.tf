locals {
  bamos_config = {
    acre_1              = azurerm_resource_group_template_deployment.acre_1.*
    acre_2              = azurerm_resource_group_template_deployment.acre_2.*
    resource_group_name = azurerm_resource_group.resource_group.name
  }
}

output "bamos_config" {
  value     = jsonencode(local.bamos_config)
  sensitive = true
}

resource "azurerm_resource_group" "resource_group" {
  name     = format("bamos%s", random_string.resource_group_name.result)
  location = random_shuffle.bamos.result[0]
  tags     = merge(var.tags, { owner = data.azuread_service_principal.bamos.display_name })
}

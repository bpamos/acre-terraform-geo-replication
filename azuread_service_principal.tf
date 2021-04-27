data "azuread_service_principal" "bamos" {
  application_id = var.client_id
}

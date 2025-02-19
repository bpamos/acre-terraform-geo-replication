
variable "acre_capacity" {
  type    = number
  default = 2
}

variable "acre_client_protocol" {
  type    = string
  default = "Encrypted"
}

variable "acre_cluster_policy" {
  type    = string
  default = "EnterpriseCluster"
}

variable "acre_deployment_mode" {
  type    = string
  default = "Incremental"
}

variable "acre_eviction_policy" {
  type    = string
  default = "NoEviction"
}

variable "acre_template_path_1" {
  description = "Path to ARM template being sourced"
  default     = "./ARM/ACRE/json1.template"
}

variable "acre_template_path_2" {
  description = "Path to ARM template being sourced"
  default     = "./ARM/ACRE/json2.template"
}

variable "acre_sku" {
  type    = string
  default = "Enterprise_E10"
}

variable "client_id" {
  description = "Service Principal to use (az ad sp create-for-rbac ...)"
}

variable "client_secret" {
  description = "Client Secret for Service Principal"
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}

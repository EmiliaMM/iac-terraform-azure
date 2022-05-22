variable "azurerm_resource_group_name" {
    type = string
    default = "iac-terraform-azure-EM"
  
}

variable "azurerm_resource_group_location" {
    type = string
    default = "West Europe"
  
}

variable "azurerm_storage_account_name" {
  type = string
  default = "storage-account-EM"
}

variable "account_tier" {
  type = string
  default = "Standard"
}

variable "account_replication_type" {
    type = string
    default = "LRS"
}

variable "azurerm_service_plan_name" {
    type = string
    default = "APP-Service- plan"
}

variable "os_type" {
    type = string
    default = "Linux"
}

variable "sku_name" {
    type = string
    default = "FREE"
}

variable "linux-function-app-name" {
  type = "string"
  default = "linux-function-app"
}
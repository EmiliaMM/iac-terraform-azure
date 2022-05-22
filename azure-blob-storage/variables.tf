variable "azurerm_blob_resource_group_name" {
    type = string
    default = "Azure Blob Storage--EM"
  
}

variable "azurerm_blob_resource_group_location" {
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

variable "azurerm_storage_container_name" {
  type = string
  default = "content"
}

variable "container_access_type" {
  type = string
  default = "private"
}

variable "azurerm_storage_blob-name" {
    type = string
    default = "url-EM-blob.zip"
  
}

variable "blob-type" {
    type = string
    default = "Block"
  
}
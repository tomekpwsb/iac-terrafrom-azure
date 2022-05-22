variable "resource_group_name" {
  type = string
  default = "PiAAwC_Resource_Group"
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "account_name" {
  type = string
  default = null
}

variable "access_tier" {
  type    = string
  default = "standard"
}

variable "replication_type" {
  type    = string
  default = "LRS"
}

variable "azurerm_storage_container_name" {
  type    = string
  default = "azurerm_storage_container_tomek"
}

variable "container_access_type" {
  type    = string
  default = "private"
}

variable "azurerm_storage_blob_name" {
  type    = string
  default = "azurerm_storage_blob_tomek.zip"
}

variable "blob_type" {
  type    = string
  default = "Block"
}


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

variable "service_plan_name" {
  type    = string
  default = "Tomek_plan_name"
}

variable "linux_function_app_name" {
  type    = string
  default = "linux_function_app_tomek"
}

variable "function_app_name" {
  type    = string
  default = "function_app_tomek"
}

variable "azurerm_service_plan_name" {
  type    = string
  default = "azurerm_service_plan_tomek"
}

variable "os_type" {
  type = string
  default = "Linux"
}

variable "linux_function_app_version" {
  type = string
  default = "~3"
}

variable "sku_name" {
  type = string
  default = "free"
}
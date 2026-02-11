variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the storage account"
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account. Valid values are 'Standard' and 'Premium'."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account. Valid values are 'LRS', 'GRS', 'RAGRS', and 'ZRS'."
  type        = string
}
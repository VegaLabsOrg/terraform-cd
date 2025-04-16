#variable "azure_subscription_id_global" {}

variable "location" {
  default     = "centralus"
  description = "Location of the resource group."
}

variable "env_prefix" {
  default = "ftdsu"
}

variable "acr_sku" {
  default = "Standard"
  type    = string
}
variable "acr_admin_enabled" {
  default = true
  type    = bool
}
variable "acr_zone_redundancy_enabled" {
  default = true
  type    = bool
}
variable "georeplications_zone_redundancy_enabled" {
  default = true
  type    = bool
}
variable "georeplications_regional_endpoint_enabled" {
  default = false
  type    = bool
}
variable "acr_name" {
  default = "acr-test"
}
variable "acr_public_network_enabled" {
  default = true
}

variable "env_name" {
  default = "uat"
  type    = string
}

variable "location_pair" {
  default = ""
}

variable "tags" {
  default = {
    "ApplicationName"    = "labs Cloud Services Manticore"
    "ApplicationTag"     = "lan=bs Cloud"
    "Capability"         = "Network and Cloud Services"
    "DataClassification" = "Confidential"
    "Environment"        = "Sandbox UAT"
    "Lifespan"           = "Temporaly"
    "OwnerEmail"         = "luisfelipe.vega@rockwellautyomation.com"
    "ProjectInitiative"  = "Default Project"
    "ServiceClass"       = "User Managed"
  }
}

variable "tfstate_rg" {
  default     = "terraform-rg"
  type        = string
  description = "The name of the resource group where the Terraform state file is stored."

}
variable "tfstate_storage_account_name" {
  default     = "tfstate26035"
  type        = string
  description = "The name of the storage account where the Terraform state file is stored."
}
variable "tfstate_container_name" {
  default     = "tfstate"
  type        = string
  description = "The name of the container where the Terraform state file is stored."
}
variable "tfstate_key" {
  type        = string
  description = "The name of the key for the Terraform state file."
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID."
}

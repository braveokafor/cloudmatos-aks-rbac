# Environment
variable "environment" {
  description = "environment"
  type        = string
}

# Maintainer
variable "maintainer" {
  description = "maintainer"
  type        = string
}

# RESOURCE GROUP
variable "resource-group-name" {
  description = "resource group name"
  type        = string
}
variable "resource-group-location" {
  description = "resource group location"
  type        = string
}

# STORAGE ACCOUNT
variable "storage-account-name" {
  description = "storage account name"
  type        = string
}
variable "storage-account-tier" {
  description = "storage account tier "
  type        = string
}
variable "storage-account-replication-type" {
  description = "storage account replication type"
  type        = string
}

# TFSTATE
variable "tfstate-storage-container-name" {
  description = "tfstate storage container name"
  type        = string
}



variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "agent_count" {
  default = 3
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
  default = "k8stest"
}

variable "cluster_name" {
  default = "k8stest"
}

variable "resource_group_name" {
  default = "azure-k8stest"
}

variable "location" {
  default = "Central US"
}

variable "log_analytics_workspace_name" {
  default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable "log_analytics_workspace_location" {
  default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}

variable "aks_service_principal_app_id" {
  
}

variable "aks_service_principal_client_secret" {
  
}

/* variable "aks_service_principal_object_id" {
  
} */
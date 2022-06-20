variable "aks-clusters" {
  description = "A list of AKS Clusters to enable RBAC on."
  type        = list(string)
}

variable "resource-group-name" {
  description = "The Resource Group name"
  type        = string
}
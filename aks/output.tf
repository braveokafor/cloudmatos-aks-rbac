output "resource_group_name" {
  value = azurerm_resource_group.resource-group.name
}

output "cluster_name" {
  value     = azurerm_kubernetes_cluster.k8s.name
}

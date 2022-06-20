resource "null_resource" "enable-rbac" {
  count = length(var.aks-clusters)
  provisioner "local-exec" {
    command = "az aks update -g ${var.resource-group-name} -n ${var.aks-clusters[count.index]} --enable-aad --enable-azure-rbac"
    #command = "az aks update -g ${var.resource-group-name} -n ${var.aks-clusters[count.index]} --disable-azure-rbac"
  }
}

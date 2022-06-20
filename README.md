<h1 align="center">
  Enable RBAC on AKS
</h1>
<h3 align="center">Enable "Role Based Access Contro" on Azure Kubernertes Cluster</h3>

## <p align="center">⚡️ How it Works</p>

<p>
<h2>Eanble RBAC on AKS:</h2>

|                                Action                                   |            tf file              |
|-------------------------------------------------------------------------|---------------------------------|
| Get's the "Resource Group"                                              |`./enable-rbac/terraform.tfvars` |
| Get's a list of AKS Clusters (the clusters you want to enable RBAC on)  |`./enable-rbac/terraform.tfvars` |
| Enables RBAC on the specified AKS clusters                              |`./enable-rbac/main.tf`          |                                                                                                     |`./vm-backup-vm-scope/terraform.tfvars` |


#### 🛠 Usage
- Navigate to the `./enable-rbac` directory. 
- Edit the `resource-group-name`, and `aks-clusters` (just the cluster names) variables in the `terraform.tfvars`.
```hcl
aks-clusters        = ["k8stest"]
resource-group-name = "test-aks-rg"
```
Then perform the following commands on the directory:
- `terraform init` to get required plugins.
- `terraform plan` to review the infrastructure plan.
- `terraform apply` to apply the infrastructure.
<br/>
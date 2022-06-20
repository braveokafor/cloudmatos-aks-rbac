<h1 align="center">
  Enable RBAC on AKS
</h1>
<h3 align="center">Enable "Role Based Access Control" on Azure Kubernertes Cluster</h3>

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
aks-clusters        = ["<cluster-1-name-goes-here>","<cluster-2-name-goes-here>"]
resource-group-name = "<resource-group-name-goes-here>"
```
Then perform the following commands on the directory:
- `terraform init` to get required plugins.
- `terraform plan` to review the infrastructure plan.
- `terraform apply` to apply the infrastructure.
<br/>

#### 🏗 Requirements
- Azure CLI (2.24.0 or later). 
- Azure Subscription (set in the CLI). 
- Azure Account (set in the CLI).
<br/>

#### 🧪 Testing
To provision a sample AKS Cluster for testing:  
- Navigate to the `./aks` directory. 
- Edit the `resource-group-name`, and `resource-group-location` variables in the `terraform.tfvars`.
- Add a valid "Service Principal App ID" `aks_service_principal_app_id`, and "Service Principal Password `aks_service_principal_client_secret` in the `terraform.tfvars`.
```hcl
# RESOURCE GROUP
resource-group-name     = "test-aks-rg"
resource-group-location = "Central US"

# SERVICE PRINCIPAL
aks_service_principal_app_id        = "<service_principal_app_id>"
aks_service_principal_client_secret = "<service_principal_password>"
```

Then perform the following commands on the directory:
- `terraform init` to get required plugins.
- `terraform plan` to review the infrastructure plan.
- `terraform apply` to apply the infrastructure.
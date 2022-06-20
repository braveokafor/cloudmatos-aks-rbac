# GENERAL/ TAGS
environment = "staging"
maintainer  = "Brave Okafor <okaforbrave@gmail.com>"

# RESOURCE GROUP
resource-group-name     = "test-aks-rg"
resource-group-location = "Central US" #"Germany West Central" # "West Europe"

# UNCOMMENT IF YOU INTEND TO USE REMOTE STATE
/* # STORAGE ACCOUNT
storage-account-name             = "darkeyetestakssa" #"deepeyesa"
storage-account-tier             = "Standard"
storage-account-replication-type = "LRS"

# TFSTATE
tfstate-storage-container-name = "tfstate" */

# SERVICE PRINCIPAL
aks_service_principal_app_id        = "<service_principal_app_id>"
aks_service_principal_client_secret = "<service_principal_password>"

resource "random_id" "log_analytics_workspace_name_suffix" {
  byte_length = 8
}

resource "azurerm_log_analytics_workspace" "log-analytics-workspace" {
  # The WorkSpace name has to be unique across the whole of azure, not just the current subscription/tenant.
  name                = "${var.log_analytics_workspace_name}-${random_id.log_analytics_workspace_name_suffix.dec}"
  location            = var.log_analytics_workspace_location
  resource_group_name = azurerm_resource_group.resource-group.name
  sku                 = var.log_analytics_workspace_sku
}

resource "azurerm_log_analytics_solution" "log-analytics-solution" {
  solution_name         = "ContainerInsights"
  location              = azurerm_log_analytics_workspace.log-analytics-workspace.location
  resource_group_name   = azurerm_resource_group.resource-group.name
  workspace_resource_id = azurerm_log_analytics_workspace.log-analytics-workspace.id
  workspace_name        = azurerm_log_analytics_workspace.log-analytics-workspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                              = var.cluster_name
  location                          = azurerm_resource_group.resource-group.location
  resource_group_name               = azurerm_resource_group.resource-group.name
  dns_prefix                        = var.dns_prefix
  role_based_access_control_enabled = false

  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

  default_node_pool {
    name       = "agentpool"
    node_count = var.agent_count
    vm_size    = "Standard_D2as_v5" #"Standard_D2_v2"
  }

  service_principal {
    client_id     = var.aks_service_principal_app_id
    client_secret = var.aks_service_principal_client_secret
  }


  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.log-analytics-workspace.id
  }


  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "kubenet"
  }

  tags = {
    Environment = "Development"
  }
}

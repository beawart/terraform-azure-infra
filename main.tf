module "baseline_health_alerts-StorageAccount" {
  source              = "git::https://github.com/beawart/azure-monitoring-kit-community.git//modules/baseline-health"
  resource_group_name = "tfstate-rg"
  target_resource_ids = [
    "/subscriptions/${var.subscription_id}/resourceGroups/tfstate-rg/providers/Microsoft.Storage/storageAccounts/tfstateaccountbeawart"
  ]
  resource_type    = "storage_account"
  action_group_ids = ["/subscriptions/${var.subscription_id}/resourceGroups/tfstate-rg/providers/microsoft.insights/actiongroups/ag-taha-email"]
  tags             = { environment = "prod" }

  alerts_overrides = {
    used_capacity = {
      threshold   = 6e+14
      severity    = 1
      window_size = "PT12H"
    }
    availability = {
      enabled = true # disable this baseline alert for this deployment
    }
  }
}

# module "baseline_health_alerts-VirtualMachine" {
#   source              = "git::https://github.com/beawart/azure-monitoring-kit-community.git//modules/baseline-health"
#   resource_group_name = "tfstate-rg"
#   target_resource_ids = [
#     
#   ]
#   resource_type    = "virtual_machine"
#   action_group_ids = [""]
#   tags             = { environment = "prod" }

#   alerts_overrides = {
#   }
# }

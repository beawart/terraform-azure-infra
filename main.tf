# module "storage_tfstateaccountbeawart_baseline" {
#   source              = "git::https://github.com/beawart/azure-monitoring-kit-community.git//modules/baseline?ref=feature/tb/InitialUpdates"
#   resource_group_name = "tfstate-rg"
#   target_resource_id  = "/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/Microsoft.Storage/storageAccounts/tfstateaccountbeawart"
#   action_group_ids    = ["/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/microsoft.insights/actiongroups/ag-taha-email"]
# }


module "storage_baseline_alerts" {
  source              = "git::https://github.com/beawart/azure-monitoring-kit-community.git//modules/baseline-alerts?ref=feature/tb/InitialUpdates"
  resource_group_name = "tfstate-rg"
  target_resource_ids = [
    "/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/Microsoft.Storage/storageAccounts/tfstateaccountbeawart"
  ]
  resource_type    = "storage_account"
  action_group_ids = ["/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/microsoft.insights/actiongroups/ag-taha-email"]
  tags             = { environment = "prod" }

  alerts_overrides = {
    used_capacity = {
      threshold   = 6e+14
      severity    = 1
      window_size = "PT12H"
    }
    availability = {
      enabled = false # disable this baseline alert for this deployment
    }
    network_rule_change = {
      enabled  = true
      severity = 1
    }
  }
}

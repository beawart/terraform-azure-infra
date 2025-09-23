module "baseline_health_alerts" {
  source              = "git::https://github.com/beawart/azure-monitoring-kit-community.git//modules/baseline-health"
  resource_group_name = "tfstate-rg"
  target_resource_ids = [
    "/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/Microsoft.Storage/storageAccounts/tfstateaccountbeawart"
  ]
  # resource_type    = "storage_account"
  action_group_ids = ["/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/microsoft.insights/actiongroups/ag-taha-email"]
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

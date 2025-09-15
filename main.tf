module "storage_acc_baseline" {
  source              = "git::https://github.com/beawart/azure-monitoring-kit-community.git//modules/baseline?ref=feature/tb/InitialUpdates"
  resource_group_name = "tfstate-rg"
  target_resource_id  = "/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/Microsoft.Storage/storageAccounts/tfstateaccountbeawart"
  action_group_id     = ["/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/microsoft.insights/actiongroups/ag-taha-email"]
}

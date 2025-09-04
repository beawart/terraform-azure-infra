module "storage_ingress_alert" {
  source              = "https://github.com/beawart/azure-monitoring-kit-community/tree/feature/tb/InitialUpdates/modules/baseline"
  alert_name          = "storage-ingress-alert"
  resource_group_name = "tfstate-rg"
  target_resource_id  = "/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/Microsoft.Storage/storageAccounts/tfstateaccountbeawart"
  metric_namespace    = "Microsoft.Storage/storageAccounts"
  metric_name         = "Ingress"
  aggregation         = "Total"
  operator            = "GreaterThan"
  threshold           = 1000000000 # 1 GB in bytes
  frequency           = "PT5M"
  window_size         = "PT5M"
  severity            = 2
  enabled             = true
  description         = "Alert when ingress exceeds 1GB in 5 minutes"
  action_group_id     = "/subscriptions/3ff211f1-4d5d-4ed8-b3fc-858378f20b7d/resourceGroups/tfstate-rg/providers/microsoft.insights/actiongroups/ag-taha-email"
}

resource "azurerm_monitor_metric_alert" "this" {
  name                = var.alert_name
  resource_group_name = var.resource_group_name
  scopes              = [var.target_resource_id]
  description         = var.description
  severity            = var.severity
  frequency           = var.frequency
  window_size         = var.window_size
  enabled             = var.enabled

  criteria {
    metric_namespace = var.metric_namespace
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
  }

  action {
    action_group_id = var.action_group_id
  }
}

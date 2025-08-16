output "alert_id" {
  description = "ID of the created metric alert"
  value       = azurerm_monitor_metric_alert.this.id
}

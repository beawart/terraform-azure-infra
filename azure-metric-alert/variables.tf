variable "alert_name" {
  description = "Name of the metric alert"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "target_resource_id" {
  description = "ID of the resource to monitor"
  type        = string
}

variable "description" {
  description = "Alert description"
  type        = string
  default     = "Metric alert rule"
}

variable "severity" {
  description = "Severity level (0 = critical, 4 = verbose)"
  type        = number
  default     = 3
}

variable "frequency" {
  description = "Evaluation frequency (e.g., PT1M, PT5M)"
  type        = string
  default     = "PT5M"
}

variable "window_size" {
  description = "Time window size (e.g., PT5M)"
  type        = string
  default     = "PT5M"
}

variable "enabled" {
  description = "Enable or disable the alert"
  type        = bool
  default     = true
}

variable "metric_namespace" {
  description = "Namespace of the metric"
  type        = string
}

variable "metric_name" {
  description = "Name of the metric to monitor"
  type        = string
}

variable "aggregation" {
  description = "Aggregation type (e.g., Average, Total)"
  type        = string
}

variable "operator" {
  description = "Comparison operator (e.g., GreaterThan)"
  type        = string
}

variable "threshold" {
  description = "Threshold value"
  type        = number
}

variable "action_group_id" {
  description = "ID of the action group to notify"
  type        = string
}

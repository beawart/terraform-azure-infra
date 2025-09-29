variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Subscription ID value"
  type        = string
  sensitive   = true
}

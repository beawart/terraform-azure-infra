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

variable "admin_ssh_public_key" {
  description = "Public SSH key for VM login"
  type        = string
}

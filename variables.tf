variable "prefix" {
  description = "Prefix for resources"
  default     = "ansible-lab"
}

variable "location" {
  description = "Azure region"
  default     = "eastus"
}

variable "admin_username" {
  description = "Admin username for VMs"
  default     = "ansible"
}

variable "ssh_public_key" {
  description = "SSH public key to use for authentication"
  type        = string
}
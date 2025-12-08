provider "vsphere" {
  user                 = var.vcenter_user
  password             = var.vcenter_password
  vsphere_server       = var.vcenter_server
  allow_unverified_ssl = true
}

variable "vcenter_server" {
  type        = string
  description = "vCenter hostname or IP"
  default     = ""
}

variable "vcenter_user" {
  type        = string
  description = "vCenter login username"
}

variable "vcenter_password" {
  type        = string
  description = "vCenter login password"
  sensitive   = true
}

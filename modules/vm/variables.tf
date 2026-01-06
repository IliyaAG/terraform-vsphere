############################
# Placement
############################

variable "datacenter" {
  type        = string
  description = "Datacenter name"
}

variable "cluster" {
  type        = string
  description = "Cluster name"
}

variable "datastore" {
  type        = string
  description = "Datastore name"
}

variable "network" {
  type        = string
  description = "Network/Portgroup name"
}

############################
# VM
############################

variable "vm_name" {
  type        = string
  description = "Virtual machine name"
}

variable "template" {
  type        = string
  description = "Template VM name to clone from"
}

variable "cpu" {
  type        = number
  description = "Number of vCPUs"
  validation {
    condition     = var.cpu >= 1
    error_message = "cpu must be >= 1."
  }
}

variable "memory" {
  type        = number
  description = "Memory in MB"
  validation {
    condition     = var.memory >= 512
    error_message = "memory must be >= 512 MB."
  }
}

variable "disk_gb" {
  type        = number
  description = "Disk size in GB"
  validation {
    condition     = var.disk_gb >= 10
    error_message = "disk_gb must be >= 10."
  }
}

############################
# Networking
############################

variable "ipv4" {
  type        = string
  description = "IPv4 address"
}

variable "ipv4_netmask" {
  type        = number
  description = "IPv4 netmask bits (e.g. 24)"
  default     = 24
}

variable "gateway" {
  type        = string
  description = "IPv4 gateway"
}

variable "dns" {
  type        = list(string)
  description = "DNS servers list"
}

variable "domain" {
  type        = string
  description = "DNS domain for customization"
  default     = "local"
}

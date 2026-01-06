############################
# vSphere Connection
############################

variable "vcenter_server" {
  type        = string
  description = "vCenter hostname or IP"
}

variable "vcenter_user" {
  type        = string
  description = "vCenter login username (e.g. administrator@vsphere.local)"
}

variable "vcenter_password" {
  type        = string
  description = "vCenter login password"
  sensitive   = true
}

variable "allow_unverified_ssl" {
  type        = bool
  description = "Allow self-signed/unverified TLS certificate"
  default     = true
}

############################
# vSphere Placement
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
# Defaults (Company-wide)
############################

variable "default_domain" {
  type        = string
  description = "Default VM domain for customization"
  default     = "local"
}

variable "default_ipv4_netmask" {
  type        = number
  description = "Default IPv4 netmask bits (e.g. 24)"
  default     = 24
}

############################
# VM Config Map (Multi-VM)
############################

variable "vm_config" {
  description = "VM configuration map. Key is vm_name. Value contains template and resources and networking."
  type = map(object({
    template = string
    cpu      = number
    memory   = number   # MB
    disk_gb  = number

    ipv4    = string
    gateway = string
    dns     = list(string)

    # Optional overrides (if you don't want, remove these 3 lines and from module call)
    ipv4_netmask = optional(number)
    domain       = optional(string)
  }))

  validation {
    condition     = length(var.vm_config) > 0
    error_message = "vm_config must contain at least one VM definition."
  }
}

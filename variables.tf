variable "vcenter_server" {
  description = "vCenter hostname or IP"
  type        = string
}

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

variable "vm_config" {
  description = "VM configuration map"
  type = map(object({
    template   = string
    cpu        = number
    memory     = number
    disk_gb    = number
    ipv4       = string
    gateway    = string
    dns        = list(string)
  }))
}

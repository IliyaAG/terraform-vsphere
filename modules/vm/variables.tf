variable "vm_name" {}
variable "template" {}
variable "cpu" {}
variable "memory" {}
variable "disk_gb" {}
variable "ipv4" {}
variable "gateway" {}
variable "dns" { type = list(string) }

variable "datacenter" {}
variable "cluster" {}
variable "datastore" {}
variable "network" {}

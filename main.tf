module "vms" {
  source = "./modules/vm"

  for_each = var.vm_config

  vm_name      = each.key
  template     = each.value.template
  cpu          = each.value.cpu
  memory       = each.value.memory
  disk_gb      = each.value.disk_gb
  ipv4         = each.value.ipv4
  gateway      = each.value.gateway
  dns          = each.value.dns

  datacenter = var.datacenter
  cluster    = var.cluster
  datastore  = var.datastore
  network    = var.network
}

output "vm_details" {
  description = "Details of all created VMs (per key in vm_config)"
  value = {
    for name, m in module.vms : name => {
      id         = m.vm_id
      name       = m.vm_name
      guest_ips  = m.guest_ip_addresses
    }
  }
}

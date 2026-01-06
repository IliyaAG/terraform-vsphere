output "vm_id" {
  description = "Managed object ID of the VM"
  value       = vsphere_virtual_machine.vm.id
}

output "vm_name" {
  description = "Name of the VM"
  value       = vsphere_virtual_machine.vm.name
}

output "guest_ip_addresses" {
  description = "Guest IP addresses reported by VMware Tools"
  value       = try(vsphere_virtual_machine.vm.guest_ip_addresses, [])
}

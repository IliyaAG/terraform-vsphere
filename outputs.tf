output "vm_ips" {
  value = {
    for vm, mod in module.vms :
    vm => mod.ip
  }
}

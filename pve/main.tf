# for cloud-init 
resource "proxmox_vm_qemu" "test_vm" {
  name        = "test-vm"
  target_node = "PVE-SVR-000"                      # Replace with your Proxmox node name
  clone       = "ubuntu-cloud"              # Replace with your VM template name
  cores       = 2
  memory      = 2048
  #net0        = "virtio,bridge=vmbr0"
}

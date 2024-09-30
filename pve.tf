terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
  pm_debug        = true  
  pm_api_url      = "https://192.168.1.20:8006/api2/json"
  pm_user         = "root@pam"  # Replace with your Proxmox user
  pm_password     = "Hrss#7001"        # Replace with your password
  pm_tls_insecure = true                    # Set to true if you are using a self-signed certificate
}

resource "proxmox_vm_qemu" "test_vm" {
  name        = "test-vm"
  target_node = "PVE-SVR-000"                      # Replace with your Proxmox node name
  clone       = "ubuntu-cloud"              # Replace with your VM template name
  cores       = 2
  memory      = 2048
  #net0        = "virtio,bridge=vmbr0"
}

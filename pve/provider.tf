
terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

variable "pve_username" {
    description = "proxmox VE username"
    }

variable "pve_password" {
    description = "proxmox VE password"
    type = string
    sensitive = true 
    }

provider "proxmox" {
  pm_debug        = true  
  pm_api_url      = "https://192.168.1.20:8006/api2/json"
  pm_user         = var.pve_username  # Replace with your Proxmox user
  pm_password     = var.pve_password        # Replace with your password
  pm_tls_insecure = true                    # Set to true if you are using a self-signed certificate
}

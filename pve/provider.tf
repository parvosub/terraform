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
  pm_user         = " "  # Replace with your Proxmox user
  pm_password     = " "        # Replace with your password
  pm_tls_insecure = true                    # Set to true if you are using a self-signed certificate
}

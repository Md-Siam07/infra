terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.7.4"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://${var.url}:8006/api2/json"
    pm_user = "root@pam"
    pm_password = var.password
    pm_tls_insecure = "true"
}

resource "proxmox_vm_qemu" "vm" {
  count             = 1 
  agent             = 1
  guest_agent_ready_timeout = 60
  name              = var.name
  target_node       = "proxmox"

  clone             = var.template_name

  os_type           = "cloud-init"
  cores             = var.cores 
  sockets           = var.sockets
  memory            = var.memory
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"

  disk {
      size          = var.disk_size
      type          = "scsi"
      storage       = var.disk_storage
  }

  network {
    model           = "virtio"
    bridge          = "vmbr0"
  }

  lifecycle {
    ignore_changes  = [
      network,
      ciuser,
      sshkeys,
    ]
  }

  ipconfig0 = "ip=${var.ip}/16,gw=10.10.1.1"
}


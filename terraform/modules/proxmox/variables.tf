variable "name" {
    description = "VM Name"
    type = string
}

variable "template_name" {
    description = "Template name"
    type = string
}

variable "ip" {
    description = "IP address of the VM"
    type = string
}

variable "cores" {
    description = "Number of cores in the VM"
    type = number
    default = 2
}

variable "sockets" {
    type = string
    default = "1"
}

variable "memory" {
    description = "Memory for the VM"
    type = number
    default = 2048
}

variable "disk_size" {
    description = "Size of the disk"
    type = string
    default = "25G"
}

variable "disk_storage" {
    description = "Which disk to store the vm, default local-lvm"
    type = string
    default = "local-lvm"
}

variable "url" {
    description = "Proxmox URL"
}

variable "password" {
    description = "Proxmox password"
}

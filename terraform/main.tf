module "active_directory" {
    source = "./modules/proxmox"
    name = "active-directory"
    template_name = "centos8"
    ip = "10.10.1.20"
    memory = 4096
    cores = 4
    url = var.url
    password = var.password
}

module "pihole" {
    source = "./modules/proxmox"
    name = "pihole"
    template_name = "ubuntu20"
    ip = "10.10.1.50"
    memory = 2048
    url = var.url
    password = var.password
}

module "kube_master_1" {
    source = "./modules/proxmox"
    name = "kube-master-1"
    template_name = "ubuntu20"
    ip = "10.10.1.51"
    memory = 8000 
    cores = 4
    url = var.url
    password = var.password
}

module "kube_minion_1" {
    source = "./modules/proxmox"
    name = "kube-minion-1"
    template_name = "ubuntu20"
    ip = "10.10.1.52"
    memory = 16000
    cores = 4
    url = var.url
    disk_size = "350G"
    password = var.password
}

module "kube_minion_2" {
    source = "./modules/proxmox"
    name = "kube-minion-2"
    template_name = "ubuntu20"
    ip = "10.10.1.53"
    memory = 16000
    cores = 4
    url = var.url
    password = var.password
    disk_size = "350G"
}

module "kube_master_2" {
    source = "./modules/proxmox"
    name = "kube-master-2"
    template_name = "ubuntu20"
    ip = "10.10.1.54"
    memory = 8000
    cores = 4
    url = var.url
    password = var.password
}

module "postgres" {
    source = "./modules/proxmox"
    name = "postgres"
    template_name = "ubuntu20"
    ip = "10.10.1.55"
    memory = 4096
    disk_size = "75G"
    disk_storage = "NAS-Proxmox"
    url = var.url
    password = var.password
}

module "k3s_load_balancer" {
    source = "./modules/proxmox"
    name = "k3s-load-balancer"
    template_name = "ubuntu20"
    ip = "10.10.1.56"
    memory = 1024
    url = var.url
    password = var.password
}

module "rev_proxy" {
    source = "./modules/proxmox"
    name = "rev-proxy"
    template_name = "ubuntu20"
    ip = "10.10.1.57"
    memory = 2048
    url = var.url
    password = var.password
}


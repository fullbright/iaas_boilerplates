terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.53.1" # x-release-please-version
    }
  }
}


variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
}

variable "proxmox_api_token_secret" {
    type = string
}




provider "proxmox" {
  endpoint  = var.proxmox_api_url
  api_token = var.proxmox_api_token_secret
  insecure = true
  ssh {
    agent    = true
    username = "kekeli"
  }
}

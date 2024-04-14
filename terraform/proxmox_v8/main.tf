resource "proxmox_virtual_environment_vm" "ubuntu_vm" {
  name      = "test-ubuntu"
  node_name = "david"

  initialization {
    user_account {
      # do not use this in production, configure your own ssh key instead!
      username = "kokouvi"
      password = "ubuntupassword"
    }
  }

  #disk {
  #  datastore_id = "local-lvm"
  #  file_id      = proxmox_virtual_environment_download_file.ubuntu_cloud_image.id
  #  interface    = "virtio0"
  #  iothread     = true
  #  discard      = "on"
  #  size         = 20
  #}
}

resource "proxmox_virtual_environment_download_file" "ubuntu_cloud_image" {
  content_type = "iso"
  datastore_id = "local"
  node_name    = "david"
  url          = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
}

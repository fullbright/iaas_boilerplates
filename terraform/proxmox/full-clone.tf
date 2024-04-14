# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "gh-run-causting" {
#resource "proxmox_virtual_environment_vm" "gh-run-causting" {
    
    # VM General Settings
    target_node = "david"
    vmid = "501"
    name = "gh-runner-causting"
    desc = "A github runner VM for Causting github org"

    # VM Advanced General Settings
    onboot = true 

    # VM OS Settings
    clone = "githun-runner-jammy"

    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"    
    
    # VM Memory Settings
    memory = 1024

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    #disk {
    #    storage = "local-lvm"
    #    type = "virtio"
    #    size = "20G"
    #}


    #disks {
    #  scsi {
    #    scsi0 {
    #      disk {
    #        size       = 20
    #        storage    = "local-lvm"
    #        #emulatessd = true
    #        #type       = "virtio"
    #        #boot = "order=scsi0;ide2;net0"
    #      }
    #    }
    #  }
    #}

    disks {
      virtio {
        virtio0 {
          disk {
            size       = 20
            storage    = "local-lvm"
            #emulatessd = true
            #type       = "virtio"
            #boot = "order=scsi0;ide2;net0"
          }
        }
      }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"
    #boot = "order=scsi0;ide2;net0"
    boot = "order=virtio0;ide2;net0"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.1.21/24,gw=192.168.1.1"
    
    # (Optional) Default User
    ciuser = "kekeli"
    
    # (Optional) Add your SSH KEY
    sshkeys = <<EOF
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEfn3v6gAGRm19uG8cdPKZb++i0f+uNzfInF6HA2tpTFWkwtMIHZ19VIK3j5nq20q/xQ9NL9PLkv+KI+iNhrr3IGU6TowtmquHVkJM/YImk0AnLY1RGo5m1lg2Y2a8/aGev/fdeOLGJj6HdbzezxPxFjkD2VSFDk6BUhxLTPrZEa5XjpcKkrO+ZmjjgFF/xevY8us4ILhuQtSDCuMYFaRhroTE/Z4WCd9mZhZmp9LKlM4G4zp1Y/0axdyYiTZrU1e9kKuvZxBG6j+SiDZTfwYMv10yB7HuIiAdw8SSqP1rwfCSrgmXDE0L/GPaV/B+Tt0G3rp3SSpOllyFOmkK/8no90QUDz9WTgjKYtczt300TdBVJlnEZOcL2YqeDeB3bDCyZr6K0rxiDaObEzJ5wvGo966ykmNND8UtkmcS0HlvOAW72aZ+QzYpkDgyYzi+2HEUGSnZktCdwdXMq8zucb6xhLBri/qi40wrI5UP85s9jxBduQEOr/vHTAhY87YZUP8= kekeli@openmediavault
    EOF
}

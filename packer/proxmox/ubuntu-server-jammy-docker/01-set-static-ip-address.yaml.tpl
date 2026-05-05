network:
  version: 2
  renderer: NetworkManager
  ethernets:
    ens18:
      link-local: []
      dhcp4: no
      addresses: [${vm_1_ipcidr}]
      routes:
        - to: default
          via: ${vm_1_gw}
      nameservers:
          addresses: [${vm_1_dns}]

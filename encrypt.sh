#!/bin/bash

#if [ $# -eq 0 ]; then
#    >&2 echo "No arguments provided. Please provide the file to encrypt"
#    exit 1
#fi

if [[ -z "$PGP_PASSPHRASE" ]]; then
    echo "Must provide a PGP_PASSPHRASE variable in the environment variables" 1>&2
    exit 1
fi

if [[ -z "$ENC_CYPHER" ]]; then
    echo "Must provide a ENC_CYPHER variable in the environment variables" 1>&2
    exit 1
fi

echo "Encrypting file $1"
#gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} $1



gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/http/user-data
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/install_gh_runner.sh
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/playbook.yml
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/provision_root.sh
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/ubuntu-server-jammy-docker.pkr.hcl
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/credentials.auto.tfvars
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/full-clone.tf
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/provider.tf
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} ansible/ansible.cfg
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} ansible/install_aitools.yml
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} ansible/install_nettools.yml
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} ansible/install_prometheusexporters.yml
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} ansible/inventory
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} encrypt.sh
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/01-set-static-ip-address.yaml.tpl
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/02-set-dhcp.yaml
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/Makefile
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/credentials.auto.pkrvars.hcl
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/http/user-data.gpg
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/rsa_osmose
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} packer/proxmox/ubuntu-server-jammy-docker/rsa_osmose.pub
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/01-set-static-ip-address.yaml.tpl
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/Makefile
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/reese-output
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/terraform.tfstate.backup.2
gpg --symmetric --cipher-algo ${ENC_CYPHER} --pinentry-mode loopback --batch --yes --passphrase ${PGP_PASSPHRASE} terraform/proxmox/terraform.tfstate.backup.3




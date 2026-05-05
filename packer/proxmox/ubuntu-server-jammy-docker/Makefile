

init:
	packer init ubuntu-server-jammy-docker.pkr.hcl


build: init
	PACKER_LOG=1 packer build -var-file=credentials.auto.pkrvars.hcl ubuntu-server-jammy-docker.pkr.hcl 


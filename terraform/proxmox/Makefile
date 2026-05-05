

validate:
	terraform validate

init: validate
	terraform init -upgrade

build: init
	TF_LOG=DEBUG terraform plan -out reese-output
	TF_LOG=DEBUG terraform apply reese-output


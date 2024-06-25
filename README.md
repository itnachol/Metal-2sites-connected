# Metal 2 sites connected

<!-- TEMPLATE: Review all "TEMPLATE" comments and remove them when applied. -->
<!-- TEMPLATE: replace "template" with the name of your project. The prefix "terraform-equinix-" informs the Terraform registry that this project is a Terraform module associated with the Equinix provider, preserve this prefix. -->
[![Experimental](https://img.shields.io/badge/Stability-Experimental-red.svg)](https://github.com/equinix-labs/standards#about-uniform-standards)
[![run-pre-commit-hooks](https://github.com/equinix-labs/terraform-equinix-template/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/equinix-labs/terraform-equinix-template/actions/workflows/pre-commit.yaml)
[![generate-terraform-docs](https://github.com/equinix-labs/terraform-equinix-template/actions/workflows/documentation.yaml/badge.svg)](https://github.com/equinix-labs/terraform-equinix-template/actions/workflows/documentation.yaml)

`terraform-equinix-template` is a minimal Terraform module that utilizes [Terraform providers for Equinix](https://registry.terraform.io/namespaces/equinix) to provision digital infrastructure and demonstrate higher level integrations.

<!-- TEMPLATE: Insert an image here of the infrastructure diagram. You can generate a starting image using instructions found at https://www.terraform.io/docs/cli/commands/graph.html#generating-images -->

## Goal
This project is intended to be a quick way for depleying two Equinix Metal servers in two separate Metros with public and private config
for easily test latencies between the two sites. Connectivity will use Metal Backend transfer, that is implemented on top of Equinix Fabric, using the default L3 private IP addresses provided by the platform.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_equinix"></a> [equinix](#requirement\_equinix) | >= 1.35.0 |

Terraform install: https://developer.hashicorp.com/terraform/install

Git install: https://github.com/git-guides/install-git

## Providers

| Name | Version |
|------|---------|
| <a name="provider_equinix"></a> [equinix](#provider\_equinix) | >= 1.35.1 |

## Resources

| Name | Type |
|------|------|
| [equinix_metal_device.example](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_device) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| metal_project_id | The Metal Project ID where you'll be deploying this LAB. | `string` | n/a | yes |
| metal_auth_token | User/Project Metal credentiasl (API authoritation token) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_example_device_hostname"></a> [example\_device\_hostname](#output\_example\_device\_hostname) | The example output. In practice, output value reference implicit resource attributes declared in main.tf |
| <a name="output_example_gateway_id"></a> [example\_gateway\_id](#output\_example\_gateway\_id) | The example output. In practice, output value reference implicit resource attributes declared in main.tf |
<!-- END_TF_DOCS -->
## Contributing

## License

## Environment Variables
Define env variables that will be used in main.tf
  TF_VAR_metal_project_id
  TF_VAR_metal_auth_token

# Step by Step LAB run
### 1.- Install terraform and git commands
### 2.- Download the lab from github repository
```bash
git clone https://github.com/itnachol/Metal-2sites-connected.git
cd Metal-2sites-connected
```
### 3.- Edit your variables with the values of your choice. "metal_project_id" and "metal_auth_token" are mandatory
`nano terraform.tfvars`
### 4.- Initialize terraform environment
`terraform init`
### 5.- Run the terraform script applying the configuration defined in main.tf
`terraform apply`
### 6.- Review your output where you can find your servers info, IP addresses, names, etc.
### 7.- Loging into one of your servers for running all your tests desired
`ssh -i <ssh-private-key-file> root@<ip-address>`
### 8.- Once your tests are finished destroy the lab
`terraform destroy`

# Hope you've learned and enjoyed this lab



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

Install terraform: https://developer.hashicorp.com/terraform/install
Install git: https://github.com/git-guides/install-git

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
| <a name="input_example_auth_token"></a> [example\_auth\_token](#input\_example\_auth\_token) | The example auth token value defines what will be included in the example resource in main.tf. This example is descriptive. | `string` | n/a | yes |
| <a name="input_example_project_id"></a> [example\_project\_id](#input\_example\_project\_id) | The example project id value defines what will be included in the example resource in main.tf. This example is descriptive. | `string` | n/a | yes |

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

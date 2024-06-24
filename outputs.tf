# TEMPLATE: Consider the attributes users of this module will need to take advantage of this module
# TEMPLATE: in a new module that depends on this module (addresses, credentials, filenames).
# TEMPLATE: All outputs must have a description. Do not include descriptions or help text in the
# TEMPLATE: value, use the description field.
# TEMPLATE:
# TEMPLATE: Declare all outputs in this file, sprawling declarations are difficult to identify.
# TEMPLATE:
# TEMPLATE: https://www.terraform.io/docs/language/values/outputs.html
# TEMPLATE: https://www.terraform.io/docs/language/expressions/types.html
# TEMPLATE:

# TEMPLATE: Replace sample output described below with your own.
# output "device_hostname" {
#   description = "The example output. In practice, output value reference implicit resource attributes declared in main.tf"
#   sensitive   = false
#   value       = equinix_metal_device.example_device.hostname
# }

output "server_a" {
    description = "Attributes of Server A"
    sensitive   = true
    value = {
      id             = equinix_metal_device.server_A.id
      hostname       = equinix_metal_device.server_A.hostname
      ip_addresses   = equinix_metal_device.server_A.access_public_ipv4
      root_password  = equinix_metal_device.server_A.root_password
    }
  }

output "server_b" {
    description = "Attributes of Server B"
    sensitive   = true
    value = {
      id             = equinix_metal_device.server_B.id
      hostname       = equinix_metal_device.server_B.hostname
      ip_addresses   = equinix_metal_device.server_B.access_public_ipv4
      root_password  = equinix_metal_device.server_B.root_password
    }
  }

output "Metal_service_tokens" {
  description = "Metal service tokens"
  value       = equinix_metal_connection.metal_vc_connection.service_tokens
}

output "Metal_Connection" {
  description = "Metal Connections"
  value       = equinix_metal_connection.metal_vc_connection
} 

output "Metal_2_Azure_EVPL_VCs" {
  description = "Metal to Azure EVPL_VCs"
  value       = [equinix_fabric_connection.vc_to_azure_pri, equinix_fabric_connection.vc_to_azure_sec]
}

# output "nni" {
#   description = "nni_pri"
#   value = [[for s in equinix_fabric_connection.vc_to_azure_pri.a_side : [for ap in s.access_point : [for lp in ap.link_protocol : lp.vlan_tag if lp.vlan_tag != null] if length(ap.link_protocol) > 0] if length(s.access_point) > 0][0][0][0]]
# }

output "Metal_VC_pri" {
  description = "Metal Virtual Circuit primary"
  value = data.equinix_metal_virtual_circuit.metal_vc_pri
  sensitive = true
}
output "Metal_VC_sec" {
  description = "Metal Virtual Circuit secondary"
  value = data.equinix_metal_virtual_circuit.metal_vc_sec
  sensitive = true
}
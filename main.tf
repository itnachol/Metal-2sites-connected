# TEMPLATE: Before using "provider" blocks, consider https://www.terraform.io/docs/language/modules/develop/providers.html#implicit-provider-inheritance
# TEMPLATE:
# TEMPLATE: All ".tf" files are parsed at once. There is no benefit to numerically prefixed filenames. Keep all resource definitions in "main.tf".
# TEMPLATE:
# TEMPLATE: When main.tf becomes unwieldy, consider submodules (https://www.terraform.io/docs/language/modules/develop/structure.html)
# TEMPLATE: and dependency inversion (https://www.terraform.io/docs/language/modules/develop/composition.html).
# TEMPLATE:


# TEMPLATE: Replace sample provider described below with your own.
provider "equinix" {
  auth_token = var.metal_auth_token
}

# Provision VLANs
resource "equinix_metal_vlan" "vlans_A" {
  count       = length(var.vlans)
  project_id  = var.metal_project_id
  metro       = var.metro_a
  vxlan       = var.vlans[count.index].vxlan
  description = var.vlans[count.index].name
}
resource "equinix_metal_vlan" "vlans_B" {
  count       = length(var.vlans)
  project_id  = var.metal_project_id
  metro       = var.metro_b
  vxlan       = var.vlans[count.index].vxlan
  description = var.vlans[count.index].name
}

# Create Server A
resource "equinix_metal_device" "server_A" {
  hostname         = "ServerA"
  description      = "Server A"
  behavior {
              allow_changes = [
                "custom_data",
                "user_data"
              ]
            }
  plan             = var.server_plan
  metro            = var.metro_a
  operating_system = var.operating_system
  billing_cycle    = var.billing_cycle
  project_id       = var.metal_project_id
}

# And its networking configuration
resource "equinix_metal_device_network_type" "sA_bond0" {
  device_id = equinix_metal_device.server_A.id
  type      = "hybrid"
}
resource "equinix_metal_port_vlan_attachment" "sA_vlan-att" {
  device_id = equinix_metal_device_network_type.sA_bond0.id
  port_name = "bond0"
  vlan_vnid = equinix_metal_vlan.vlans[0].vxlan
}

# Create Server B
resource "equinix_metal_device" "server_B" {
  hostname         = "ServerB"
  description      = "Server B"
  behavior {
              allow_changes = [
                "custom_data",
                "user_data"
              ]
            }
  plan             = var.server_plan
  metro            = var.metro_b
  operating_system = var.operating_system
  billing_cycle    = var.billing_cycle
  project_id       = var.metal_project_id
}

# And its networking configuration
resource "equinix_metal_device_network_type" "sb_bond0" {
  device_id = equinix_metal_device.server_B.id
  type      = "hybrid"
}
resource "equinix_metal_port_vlan_attachment" "sb_vlan-att" {
  device_id = equinix_metal_device_network_type.sB_bond0.id
  port_name = "bond0"
  vlan_vnid = equinix_metal_vlan.vlans[0].vxlan
}

# Project ID
metal_project_id = "put-your-project-id-here"

# Authentication Metal API token
metal_auth_token = "put-your-auth-token-here"

# Server names
server_a_name = "Server-A"
server_b_name = "Server-B"

# Metros where you want your resources
# For LABs we recommend to deploy in the main Metal locations with more server capacity. These are:
# AMER: DA (Dallas), SV (Silicon Valley)
# EMEA: AM (Amsterdam), FR (Frankfurt)
# APAC: SG (Singapore), SY (Sydney)
metro_a = "am"
metro_b = "fr"

# L2 VLAN IDs and names (optional) 
vlans = [
  {
    vxlan = "1101"
    name  = "VLAN_1101"
  },
  {
    vxlan = "1102"
    name  = "VLAN_1102"
  }
]


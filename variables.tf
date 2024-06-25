# TEMPLATE: All variables must have a description and should declare their type.
# TEMPLATE: Set defaults whenever possible but do not set defaults for required properties.
# TEMPLATE: Declare all variables in this file, sprawling declarations are difficult to identify.
# TEMPLATE:
# TEMPLATE: https://www.terraform.io/docs/language/values/variables.html
# TEMPLATE: https://www.terraform.io/docs/language/expressions/types.html
# TEMPLATE:

# TEMPLATE: Replace sample variable described below with your own or define corresponding TF_VAR_xxxxx environment variables.
variable "metal_project_id" {
  type        = string
  description = "The example project id value defines what will be included in the example resource in main.tf. This example is descriptive."
  sensitive   = false
}

# TEMPLATE: Replace sample variable described below with your own.
variable "metal_auth_token" {
  type        = string
  description = "The example auth token value defines what will be included in the example resource in main.tf. This example is descriptive."
  sensitive   = true
}

variable "metro_a" {
  description = "This is the Metro Location of your deployment. (Facility will be used if empty)"
  type        = string
  default     = "am"
}

variable "metro_b" {
  description = "This is the Metro Location of your deployment. (Facility will be used if empty)"
  type        = string
  default     = "fr"
}

variable "server_a_name" {
  description = "This is the host and Metal name for your server in the location A"
  type        = string
  default     = "server_a"
}

variable "server_b_name" {
  description = "This is the host and Metal name for your server in the location B"
  type        = string
  default     = "server_b"
}

variable "billing_cycle" {
  description = "This is billing cycle to use. The hasn't beend built to allow reserved isntances yet."
  type        = string
  default     = "hourly"
}

variable "vlans" {
  description = "This is an array of VLANs"
  type = list(object({
    vxlan     = number
    name      = string
  }))
  default     = []
}

variable "operating_system" {
  description = "This is operating system for the servers"
  type        = string
  default     = "ubuntu_22_04"
}

variable "server_plan" {
  description = "This isets server's size/configuration"
  type        = string
  default     = "m3.small.x86"
}

variable "notification_email" {
  description = "This is the email address to send notifications to"
  type        = string
  default     = "<EMAIL>"
}

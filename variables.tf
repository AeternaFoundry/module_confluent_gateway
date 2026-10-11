variable "gateways" {
  description = <<EOT
Map of gateways, attributes below
Required:
    - display_name
    - environment (block):
        - id (required)
Optional:
    - aws_egress_private_link_gateway (block):
        - region (required)
    - aws_ingress_private_link_gateway (block):
        - region (required)
    - aws_private_network_interface_gateway (block):
        - region (required)
        - zones (required)
    - azure_egress_private_link_gateway (block):
        - region (required)
    - azure_ingress_private_link_gateway (block):
        - region (required)
    - gcp_ingress_private_service_connect_gateway (block):
        - region (required)
EOT

  type = map(object({
    display_name = string
    environment = object({
      id = string
    })
    aws_egress_private_link_gateway = optional(object({
      region = string
    }))
    aws_ingress_private_link_gateway = optional(object({
      region = string
    }))
    aws_private_network_interface_gateway = optional(object({
      region = string
      zones  = set(string)
    }))
    azure_egress_private_link_gateway = optional(object({
      region = string
    }))
    azure_ingress_private_link_gateway = optional(object({
      region = string
    }))
    gcp_ingress_private_service_connect_gateway = optional(object({
      region = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


output "gateways_id" {
  description = "Map of id values across all gateways, keyed the same as var.gateways except keys with no id are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gateways_aws_egress_private_link_gateway" {
  description = "Map of aws_egress_private_link_gateway values across all gateways, keyed the same as var.gateways except keys with no aws_egress_private_link_gateway are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.aws_egress_private_link_gateway) if v.aws_egress_private_link_gateway != null && length(v.aws_egress_private_link_gateway) > 0 }
}
output "gateways_aws_ingress_private_link_gateway" {
  description = "Map of aws_ingress_private_link_gateway values across all gateways, keyed the same as var.gateways except keys with no aws_ingress_private_link_gateway are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.aws_ingress_private_link_gateway) if v.aws_ingress_private_link_gateway != null && length(v.aws_ingress_private_link_gateway) > 0 }
}
output "gateways_aws_private_network_interface_gateway" {
  description = "Map of aws_private_network_interface_gateway values across all gateways, keyed the same as var.gateways except keys with no aws_private_network_interface_gateway are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.aws_private_network_interface_gateway) if v.aws_private_network_interface_gateway != null && length(v.aws_private_network_interface_gateway) > 0 }
}
output "gateways_azure_egress_private_link_gateway" {
  description = "Map of azure_egress_private_link_gateway values across all gateways, keyed the same as var.gateways except keys with no azure_egress_private_link_gateway are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.azure_egress_private_link_gateway) if v.azure_egress_private_link_gateway != null && length(v.azure_egress_private_link_gateway) > 0 }
}
output "gateways_azure_ingress_private_link_gateway" {
  description = "Map of azure_ingress_private_link_gateway values across all gateways, keyed the same as var.gateways except keys with no azure_ingress_private_link_gateway are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.azure_ingress_private_link_gateway) if v.azure_ingress_private_link_gateway != null && length(v.azure_ingress_private_link_gateway) > 0 }
}
output "gateways_display_name" {
  description = "Map of display_name values across all gateways, keyed the same as var.gateways except keys with no display_name are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "gateways_environment" {
  description = "Map of environment values across all gateways, keyed the same as var.gateways except keys with no environment are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "gateways_gcp_ingress_private_service_connect_gateway" {
  description = "Map of gcp_ingress_private_service_connect_gateway values across all gateways, keyed the same as var.gateways except keys with no gcp_ingress_private_service_connect_gateway are omitted"
  value       = { for k, v in confluent_gateway.gateways : k => one(v.gcp_ingress_private_service_connect_gateway) if v.gcp_ingress_private_service_connect_gateway != null && length(v.gcp_ingress_private_service_connect_gateway) > 0 }
}


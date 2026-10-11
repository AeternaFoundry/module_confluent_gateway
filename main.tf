resource "confluent_gateway" "gateways" {
  for_each = var.gateways

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }

  dynamic "aws_egress_private_link_gateway" {
    for_each = each.value.aws_egress_private_link_gateway != null ? [each.value.aws_egress_private_link_gateway] : []
    content {
      region = aws_egress_private_link_gateway.value.region
    }
  }

  dynamic "aws_ingress_private_link_gateway" {
    for_each = each.value.aws_ingress_private_link_gateway != null ? [each.value.aws_ingress_private_link_gateway] : []
    content {
      region = aws_ingress_private_link_gateway.value.region
    }
  }

  dynamic "aws_private_network_interface_gateway" {
    for_each = each.value.aws_private_network_interface_gateway != null ? [each.value.aws_private_network_interface_gateway] : []
    content {
      region = aws_private_network_interface_gateway.value.region
      zones  = aws_private_network_interface_gateway.value.zones
    }
  }

  dynamic "azure_egress_private_link_gateway" {
    for_each = each.value.azure_egress_private_link_gateway != null ? [each.value.azure_egress_private_link_gateway] : []
    content {
      region = azure_egress_private_link_gateway.value.region
    }
  }

  dynamic "azure_ingress_private_link_gateway" {
    for_each = each.value.azure_ingress_private_link_gateway != null ? [each.value.azure_ingress_private_link_gateway] : []
    content {
      region = azure_ingress_private_link_gateway.value.region
    }
  }

  dynamic "gcp_ingress_private_service_connect_gateway" {
    for_each = each.value.gcp_ingress_private_service_connect_gateway != null ? [each.value.gcp_ingress_private_service_connect_gateway] : []
    content {
      region = gcp_ingress_private_service_connect_gateway.value.region
    }
  }
}


resource "aws_ec2_transit_gateway_vpc_attachment" "EC2TransitGatewayAttachment" {
  for_each           = { for idx, vpc_id in var.vpc_ids : idx => vpc_id }
  transit_gateway_id = aws_ec2_transit_gateway.EC2TransitGateway.id
  vpc_id             = each.value

  subnet_ids = data.aws_subnet_ids.subnets[each.value].ids

  tags = {
    Name = "tgw-attachment-${each.key + 1}"
  }
}

resource "aws_ec2_transit_gateway" "EC2TransitGateway" {
  description                   = var.transit_gateway_description
  amazon_side_asn               = var.amazon_side_asn
  auto_accept_shared_attachments = var.auto_accept_shared_attachments
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  dns_support                   = var.dns_support
  vpn_ecmp_support              = var.vpn_ecmp_support
  tags = {
    Name = var.transit_gateway_name
  }
}
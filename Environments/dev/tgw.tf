module "transit_gateway" {
    source = "../../modules/transit_gateway"

    vpc_ids                          = var.vpc_ids
    aws_region                       = var.aws_region
    transit_gateway_description      = var.transit_gateway_description
    amazon_side_asn                  = var.amazon_side_asn
    auto_accept_shared_attachments   = var.auto_accept_shared_attachments
    default_route_table_association  = var.default_route_table_association
    default_route_table_propagation  = var.default_route_table_propagation
    dns_support                      = var.dns_support
    vpn_ecmp_support                 = var.vpn_ecmp_support
    transit_gateway_name             = var.transit_gateway_name
}
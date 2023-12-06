variable "aws_region" {
  type        = string
}

variable "vpc_ids" {
  description = "List of VPC IDs to attach to the transit gateway"
  type        = list(string)
}

variable "transit_gateway_description" {
  description = "Description for the transit gateway"
  type        = string
}

variable "transit_gateway_name" {
  description = "Name for the transit gateway"
  type        = string
}

variable "amazon_side_asn" {
  description = "The Autonomous System Number (ASN) for the Amazon side of the gateway"
  type        = number
}

variable "auto_accept_shared_attachments" {
  description = "Whether resource attachments are automatically accepted"
  type        = string
}

variable "default_route_table_association" {
  description = "Whether resource attachments are automatically associated with the default association route table"
  type        = string
}

variable "default_route_table_propagation" {
  description = "Whether resource attachments automatically propagate routes to the default propagation route table"
  type        = string
}

variable "dns_support" {
  description = "Whether DNS support is enabled"
  type        = string
}

variable "vpn_ecmp_support" {
  description = "Whether VPN Equal Cost Multipath Protocol support is enabled"
  type        = string
}
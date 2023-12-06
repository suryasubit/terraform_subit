data "aws_subnet_ids" "subnets" {
  for_each = { for vpc_id in var.vpc_ids : vpc_id => vpc_id }
  vpc_id   = each.value
}
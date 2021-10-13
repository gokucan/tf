resource "aws_security_group" "sec_group" {
  name        = var.sec_group_name
  description = var.group_description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    iterator = ing
    for_each = var.ingress_list

    content {
      from_port   = ing.value.from_port
      to_port     = ing.value.to_port
      cidr_blocks = ing.value.cidr_blocks
      protocol    = ing.value.protocol
    }
  }
  dynamic "egress" {
    iterator = eng
    for_each = var.egress_list

    content {
      from_port   = eng.value.from_port
      to_port     = eng.value.to_port
      cidr_blocks = eng.value.cidr_blocks
      protocol    = eng.value.protocol
    }
  }
}

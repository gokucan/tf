resource "aws_lb" "alb_one" {
  name               = "Load-Balancer"
  internal           = var.internal_type
  load_balancer_type = var.type_lb
  subnets            = var.subnet_list # subnet ID
  security_groups    = ["${var.sec_group}"]   # security group ID
}

resource "aws_alb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.alb_one.arn
  port              = var.port_number
  protocol          = var.port_type

  default_action {
    target_group_arn = aws_lb_target_group.alb_target.arn
    type             = "forward"
  }
}

resource "aws_lb_target_group" "alb_target" {
  name     = "ALB-TGT"
  port     = var.port_number
  protocol = var.port_type
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "alb_attach" {
  target_group_arn = aws_lb_target_group.alb_target.arn
  target_id        = var.instance_id
  port             = var.port_number

  depends_on = [
    var.instance_id
  ]
}

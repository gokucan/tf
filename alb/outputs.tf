output "aws_LB" {
  description = "The ARN of the load balancer."
  value       = aws_lb.alb_one.id
}
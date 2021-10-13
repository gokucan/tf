output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}
output "igw_id" {
  value       = aws_internet_gateway.gateway.id
  description = "igw_id"
}

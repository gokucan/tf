output "nat_id" {
  description = "nat_id"
  value       = aws_nat_gateway.nat.id
}
output "eip" {
  description = "eip_id"
  value       = aws_eip.nat_eip.id
}

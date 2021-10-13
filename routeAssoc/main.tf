resource "aws_route_table_association" "public" {
  count          = length(var.subnet_ids)
  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = aws_route_table.route_table.id
}
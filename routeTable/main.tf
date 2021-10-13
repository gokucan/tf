resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  tags = {
    Name        = var.route_name
  }
}
resource "aws_route" "public_internet_gateway" {
  route_table_id         = "${aws_route_table.route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}
resource "aws_route_table_association" "public" {
  count          = length(var.subnet_ids)
  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = aws_route_table.route_table.id
}

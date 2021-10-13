resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [var.igw]
}
/* NAT */
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = element(var.subnet_list, 0)
  depends_on    = [var.igw]
  tags = {
    Name        = var.igw_name
  }
}

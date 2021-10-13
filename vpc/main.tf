resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block_vpc

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.vpc_name
  }
}

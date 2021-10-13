#data "aws_availability_zones" "available" {}

resource "aws_subnet" "subnets" {
  count                   = length(var.subnet_input)
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_input[count.index]
  map_public_ip_on_launch = var.map_public_ip
  availability_zone       = var.availability_zone[count.index]

  tags = {
    Name = "dev_${count.index}"
  }
}

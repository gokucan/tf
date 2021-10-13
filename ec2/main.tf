resource "aws_instance" "instance_one" {
  count         = var.instance_count
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file(var.user_data)
  security_groups = var.sec_group

  network_interface {
    network_interface_id = var.interface_id
    device_index         = 0
  }

  tags = {
    Name = "Terraform-${count.index + 1}"
  }
}

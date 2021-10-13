resource "aws_network_interface" "net_int" {
  subnet_id   = var.subnet_id
  private_ips = ["${var.private_ip}"]
}
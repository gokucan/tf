variable "subnet_input" {
  type        = list
  description = "subnet_input"
}
variable "availability_zone" {
  type        = list
  description = "availability_zones"
}
variable "vpc_id" {
  type        = string
  description = "vpc_id"
}
variable "map_public_ip" {
  type	      = bool
  description = "map_public_ip"
}

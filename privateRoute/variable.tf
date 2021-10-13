variable "vpc_id" {
  type = string
  description = "vpc_id"
}
variable "nat_id" {
  type = string
  description = "nat_id"
}
variable "route_name" {
  type = string
  description = "route_name"
}
variable "subnet_ids" {
  type = list
  description = "subnet_ids"
}

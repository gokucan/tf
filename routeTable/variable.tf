variable "vpc_id" {
  type = string
  description = "vpc_id"
}
variable "igw_id" {
  type = string
  description = "igw_id"
}
variable "route_name" {
  type = string
  description = "route_name"
}
variable "subnet_ids" {
  type = list(string)
  description = "subnet_ids"
}

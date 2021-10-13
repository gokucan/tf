variable "internal_type" {
  type           = bool
  description = "internal - true / false"
}
variable "type_lb" {
  type        = string
  description = "LB TYPE"
}
variable "port_type" {
  type        = string
  description = "NAME OF PORT"
}
variable "port_number" {
  type        = number
  description = "PORT NUMBER"
}
variable "vpc_id" {
  type        = string
  description = "VPC ID"
}
variable "instance_id" {
  type        = string
  description = "instance id"
}
variable "subnet_list" {
  type        = list
  description = "sbnet to add in the ALB"
}
variable "sec_group" {
  type        = string
  description = "security group to add in ALB"
}
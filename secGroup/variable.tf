variable "vpc_id" {
  type        = string
  description = "vpc_id"
}
variable "ingress_list" {
  type        = map(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
  description = "ingress"
}
variable "egress_list" {
  type        = map(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
  description = "egress"
}
variable "sec_group_name" {
  type        = string
  description = "name of the group"
}
variable "group_description" {
  type        = string
  description = "group_description"
}

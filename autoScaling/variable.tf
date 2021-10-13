variable "worker_instance_type" {
  type        = string
  description = "worker_instance_type t2.micro"
}
variable "key_name" {
  type        = string
  description = "key_name"
}
variable "userData" {
  type        = string
  description = "user data to run on the auto scaling instances"
}
variable "subnet_list" {
  type        = list
  description = "subnet to add in suto scaling group"
}
variable "mini_size" {
  type        = number
  description = "mini_size_autoGroup"
}
variable "desired_cap" {
  type        = number
  description = "desired_cap_autoGroup"
}
variable "maxi_size" {
  type        = number
  description = "maxi_size_autoGroup"
}
variable "instance_name" {
  type = string
  description = "instance name"
}
variable "sec_group_ids" {
  type = string
  description = "var.sec_group_ids"
}
variable "image_id" {
  type = string
  description = "image_id"
}

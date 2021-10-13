variable "ami_id" {
  type = map(string)
  default = {
    "us-east-1" = "ami-04169656fea786776"
    "us-east-2" = "ami-006fce2a9625b177f"
  }
}
variable "region" {
  type = string
  description = "region"
}
variable "sec_group" {
  type = list
  description = "sec_group"
}
variable "instance_count" {
  type = number
  description = "number of instance"
}
variable "instance_type" {
  type        = string
  description = "INSTANCE TYPE"
}
variable "user_data" {
  type        = string
  description = "USER-DATA"
}
variable "key_name" {
  type        = string
  description = "key pair name"
}
variable "interface_id" {
  type = string
  description = "interface_ID"
}

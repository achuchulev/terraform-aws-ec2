
variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "public_key" {}

variable "vpc_security_group_ids" {
  type = "list"
}

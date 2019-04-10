variable "access_key" {
  description = "AWS provider access key"
}

variable "secret_key" {
  description = "AWS provider secret key"
}

variable "region" {
  default     = "us-east-2"
  description = "AWS region"
}

variable "ami" {
  description = "AWS AMI id"
}

variable "instance_type" {
  description = "AWS instance type"
}

variable "subnet_id" {
  description = "AWS subnet id"
}

variable "public_key" {
  description = "A public key for resource aws_key_pair that generates a key pair on AWS for the instance"
}

variable "vpc_security_group_ids" {
  type        = "list"
  description = "AWS VPC security group ids"
}

variable "environment" {
  default = "development"
  type = string
}

variable "aws_profile" {
  type = string
  default = "default"
}

variable "aws_region" {
  type = string
  default = "eu-west-1"
}
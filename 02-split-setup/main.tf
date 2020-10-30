provider "aws" {
  version = "~> 2.63"
  profile = var.aws_profile
  region = var.aws_region
}

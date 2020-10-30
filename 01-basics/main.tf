provider "aws" {
  version = "~> 2.63"
  profile = var.aws_profile
  region = var.aws_region
}


resource "aws_s3_bucket" "s3-staging-sensor-data-01" {
  bucket = "s3-staging-sensor-data-01"
  tags = {
    Name = "Sensor Data"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "s3-staging-sensor-data-01" {
  bucket = "s3-staging-sensor-data-01"
  tags = {
    Name = "Sensor Data: Bucket"
    Environment = var.environment
  }
}

module "lambda" {
  source = "./lambda_module"

  // variables that will be input to the lambda module
  environment = var.environment
  dynamodb_table = aws_dynamodb_table.dynamodb-sensor-data
  s3_bucket = aws_s3_bucket.s3-staging-sensor-data-01
}
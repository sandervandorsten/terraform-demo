resource "aws_dynamodb_table" "dynamodb-sensor-data" {
  name = "SensorData"
  hash_key = "SensorId"
  range_key = "Timestamp"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "SensorId"
    type = "S"
  }

  attribute {
    name = "Timestamp"
    type = "S"
  }

  tags = {
    Name        = "Sensor Data: DynamoDB"
    Environment = var.environment
  }
}
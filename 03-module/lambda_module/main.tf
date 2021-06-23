# Create a Lambda Resource
resource "aws_lambda_function" "lambda_sensor_processor" {
  filename      = "lambda_module/src/lambda-function.zip"
  function_name = "process_sensor_files"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "main.process_file"
  runtime = "python3.8"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = filebase64sha256("lambda_module/src/lambda-function.zip")

  depends_on = [aws_iam_role_policy_attachment.lambda_logs]
}
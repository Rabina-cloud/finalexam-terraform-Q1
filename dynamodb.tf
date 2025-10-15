resource "aws_dynamodb_table" "my_dynamodb" {
  name             = "example"
  hash_key         = "SessionId"
  billing_mode     = "PAY_PER_REQUEST"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "SessionId"
    type = "S"
  }
}
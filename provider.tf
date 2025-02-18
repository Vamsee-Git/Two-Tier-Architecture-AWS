provider "aws" {
  region = "ap-south-1"  # Update to your preferred AWS region
}

# Create DynamoDB Table for State Locking
resource "aws_dynamodb_table" "terraform_lock_table" {
  name         = "terraform-lock-table"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "TerraformStateLockTable"
  }
}

# S3 Backend Configuration for Remote State Management
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-two-tier-vamsee"  # Replace with your S3 bucket name
    key            = "state.tfstate"
    region         = "ap-south-1"
    dynamodb_table = aws_dynamodb_table.terraform_lock_table.name  # Reference the DynamoDB table
    encrypt        = true
  }
}

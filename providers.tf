# providers.tf

provider "aws" {
  region = var.aws_region
}

# Backend configuration for remote state using S3 and DynamoDB
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-two-tier-vamsee"  # Replace with your S3 bucket name
    key            = "statefile"    # Path to the state file within the bucket
    region         = "ap-south-1"                  # Replace with your region
  }
}

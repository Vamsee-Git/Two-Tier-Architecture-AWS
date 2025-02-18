provider "aws" {
  region = "ap-south-1"  # Update to your preferred AWS region
}

# S3 Backend Configuration for Remote State Management
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-two-tier-vamsee"  # Replace with your S3 bucket name
    key            = "state.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}

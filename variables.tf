variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
}

variable "web_instance_type" {
  description = "EC2 instance type for the web servers"
  default     = "t2.micro"
}

variable "db_instance_class" {
  description = "RDS instance type for the database"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name"
}

variable "db_username" {
  description = "admin"
}

variable "db_password" {
  description = "@Dbpassword43"
}

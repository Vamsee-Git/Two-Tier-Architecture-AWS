variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_1" {
  default = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  default = "10.0.2.0/24"
}

variable "private_subnet_cidr_1" {
  default = "10.0.3.0/24"
}

variable "private_subnet_cidr_2" {
  default = "10.0.4.0/24"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "@Dbpassword43"  # Change it to a more secure password
}

variable "ami_id" {
  default = "ami-0ddfba243cbee3768"  # Replace with a valid AMI ID (e.g., Amazon Linux)
}

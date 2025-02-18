resource "aws_db_instance" "main" {
  identifier        = "mydb"
  engine            = "mysql"
  instance_class    = var.db_instance_class
  db_name           = var.db_name
  username          = var.db_username
  password          = var.db_password
  allocated_storage = 20
  db_subnet_group_name = var.db_subnet_group_name
  security_groups   = [var.security_group_id]
}

output "endpoint" {
  value = aws_db_instance.main.endpoint
}

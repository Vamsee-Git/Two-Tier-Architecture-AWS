resource "aws_instance" "web" {
  count             = 2
  ami               = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = element(var.subnet_ids, count.index)
  security_group_ids = [var.security_group_id]
  user_data         = file("webserver_install.sh")
}

output "public_ip" {
  value = aws_instance.web[*].public_ip
}

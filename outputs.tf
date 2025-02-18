output "web_server_1_public_ip" {
  value = aws_instance.web_server_1.public_ip
}

output "web_server_2_public_ip" {
  value = aws_instance.web_server_2.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.mydb.endpoint
}
output "alb_dns_name" {
  value = aws_lb.app_lb.dns_name
  description = "The DNS name of the Application Load Balancer"
}

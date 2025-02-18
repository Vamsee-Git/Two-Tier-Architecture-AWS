output "web_server_ips" {
  value = module.web_servers.public_ip
}

output "rds_endpoint" {
  value = module.rds.endpoint
}

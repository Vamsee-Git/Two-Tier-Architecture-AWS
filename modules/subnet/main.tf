resource "aws_subnet" "public" {
  count = 2
  vpc_id = var.vpc_id
  cidr_block = cidrsubnet("10.0.0.0/16", 4, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
  count = 2
  vpc_id = var.vpc_id
  cidr_block = cidrsubnet("10.0.0.0/16", 4, count.index + 2)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

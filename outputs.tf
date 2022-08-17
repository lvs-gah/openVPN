output "default_vpc" {
  value = data.aws_vpc.default_vpc.id
}

output "default_subnet" {
  value = data.aws_subnet.default_subnet.id
}

output "public_ip"{
  value = aws_instance.open-vpn.public_ip
}

output "host_id"{
  value = aws_instance.open-vpn.id
}
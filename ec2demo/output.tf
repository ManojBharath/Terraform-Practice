/*
output "splatexp_ips" {
  value = aws_instance.demoec2.public_ip

}
output "forexp_ips" {
  value = [for ec2 in aws_instance.demoec2 : ec2.public_ip]

}
*/

output "server_ips" {
  value = [for servers in aws_instance.demoec2 : servers.public_ip]

}


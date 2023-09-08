output "amiid" {
  value = data.aws_ami.amiid.id

}

output "ec2_pip" {
  value = aws_instance.demoserver.public_ip

}
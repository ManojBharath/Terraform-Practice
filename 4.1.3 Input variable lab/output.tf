output "public_ip" {
    value = aws_instance.testserver.public_ip
  
}

output "private_ip" {
    value = aws_instance.testserver.private_ip
  
}

output "tags" {
  value = aws_instance.testserver.tags_all
}
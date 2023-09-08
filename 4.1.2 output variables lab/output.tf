output "microamiid" {
  value = aws_instance.server-micro.private_ip

}

output "mediumamiid" {
  value = aws_instance.server-medium.private_ip

}

output "largeamiid" {
  #value = aws_instance.server-large.cpu_core_count
  value = aws_instance.server-large.private_ip
}

output "bucketarn" {
  value = aws_s3_bucket.demos3bucket.arn

}
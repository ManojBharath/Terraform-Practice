resource "aws_s3_bucket" "mbpbucket" {
  bucket = "aws31-s3bucket-devops-${count.index + 1}"
  count  = 20
  tags = {
    Name        = "My_S3_Bucket-${count.index}"
    Environment = "Test - ${count.index + 1}"
  }
}

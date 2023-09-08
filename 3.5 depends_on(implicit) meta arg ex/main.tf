resource "aws_s3_bucket" "customs3" {

  bucket = "my-tf-balayya-s3bucket"

  tags = {

    "Name"        = "MyBucketS3-DevOps"
    "Environment" = "Test"
  }

}


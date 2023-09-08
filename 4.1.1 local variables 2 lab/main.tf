resource "aws_instance" "server-micro" {
  ami               = local.rhel_amiid
  instance_type     = local.micro_instance
  availability_zone = local.avzone_2a

  tags = local.ec2microtags

}

resource "aws_instance" "server-medium" {
  ami               = local.rhel_amiid
  instance_type     = local.medium_instance
  availability_zone = local.avzone_2b

  tags = local.ec2mediumtags

}

resource "aws_instance" "server-large" {
  ami               = local.amazon_amiid
  instance_type     = local.large_instance
  availability_zone = local.avzone_2c

  tags = local.ec2largetags
}

resource "aws_s3_bucket" "demos3bucket" {

  bucket = local.s3bucketname
  tags   = local.s3tags
}


locals {
  # AMI ID's
  rhel_amiid   = "ami-02b8534ff4b424939"
  ubuntu_amiid = "ami-024e6efaf93d85776"
  amazon_amiid = "ami-0911e88fb4687e06b"
  # Instances types
  micro_instance  = "t2.micro"
  medium_instance = "t2.medium"
  large_instance  = "t2.large"
  #Availability-Zones
  avzone_2a = "us-east-2c"
  avzone_2b = "us-east-2c"
  avzone_2c = "us-east-2c"
  #s3 bucket names
  s3bucketname = "demos3-tfrm-jaibalayya"

  ec2mediumtags = {

    "Name"        = "test-Server"
    "Environment" = "Testing"
  }

  ec2microtags = {

    "Name"        = "Dev-Server"
    "Environment" = "Development"
  }

  ec2largetags = {

    "Name"        = "ProdServer"
    "Environment" = "Production"
  }
  s3tags = {

    Name = "myBuckets3"

  }
}


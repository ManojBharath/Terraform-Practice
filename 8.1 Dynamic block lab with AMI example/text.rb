terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "5.15.0"
      }
    }
  }
  
  provider "aws" {
    region  = "us-east-2"
    profile = "customcredprofile"
  }
  
        ## data_block ##

  data "aws_ami" "amiid" {
    most_recent      = true
    owners           = ["amazon"]
  
    filter {
      name   = "name"
      values = ["RHEL-9.2.0_HVM-20230503-x86_64-*"]
    }
  
    filter {
      name   = "root-device-type"
      values = ["ebs"]
    }
  
    filter {
      name   = "virtualization-type"
      values = ["hvm"]
    }
  }
  
  resource "aws_instance" "demoserver" {
    ami           = data.aws_ami.amiid.id
    instance_type = "t2.micro"
    tags = {
      Name = "TestServer"
    }
  
  }

  output "amiid" {
  value = data.aws_ami.amiid.id

}

output "ec2_public_ip" {
  value = aws_instance.demoserver.public_ip

}
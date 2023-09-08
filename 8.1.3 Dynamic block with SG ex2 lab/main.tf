variable "ami_filters" {
    type = map(string)
    default = {
        "name"                = "RHEL-9.2.0_HVM-20230503-x86_64-*"
        "root-device-type"    = "ebs"
        "virtualization-type" = "hvm"
    }
  
}

data "aws_ami" "myamiid" {
  most_recent      = true
  owners           = ["amazon"]

  dynamic "filter" {
    for_each = var.ami_filters
    content {
      name = filter.name
      values = [filter.value]
    }    
  }

}

resource "aws_instance" "demoserver" {
    ami = "data.aws_ami.myamiid.id"
    instance_type = "t2.micro"
    
    tags = {
      "Name" = "WebServer" 
    }
}

variable "sg_info" {
    type = map(object({
      from_port = 
      to_port = 
      protocol =
      cidr_blocks =  
    }))
    default = {
      "name" = {
        
      }
    }
}

resource "aws_security_group" "demosg" {
  name        = "MyCSG"
  description = "Its a VPC SG"

  ingress {
    description      = "HTTP Port"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "SSH Port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Custom Security Group"
  }
}
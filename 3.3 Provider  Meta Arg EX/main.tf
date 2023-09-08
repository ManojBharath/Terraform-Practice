resource "aws_instance" "indserver" {
  ami               = "ami-008b85aa3ff5c1b02"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "Mumbai-server" 
  }
}

resource "aws_instance" "usserver" {
  ami           = "ami-07dff4fe919dee33e"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  provider      = aws.virginia
  tags = {
    "Name" = "N.Virginia-server" 
  }
}
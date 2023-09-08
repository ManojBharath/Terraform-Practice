resource "aws_instance" "myec2server" {
  ami               = "ami-008b85aa3ff5c1b02"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1b"

  tags = {
    "Name"        = "test-server"
    "Environment" = "Testing"
  }


  lifecycle {

    # create_before_destroy = true
    # prevent_destroy = true
    # ignore_changes = [ tags ]

  }


}
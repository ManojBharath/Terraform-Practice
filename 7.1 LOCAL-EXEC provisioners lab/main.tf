resource "aws_instance" "demoec2" {
  ami           = "ami-02b8534ff4b424939"
  instance_type = "t2.micro"
  key_name      = "DevOps"

  tags = {
    "Name" = "Test-Server"
  }

  #  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  provisioner "local-exec" {
    command = "echo - this is first command to execute"

  }

  provisioner "local-exec" {
    command = "echo - This is second command executing!!!!"

  }

  provisioner "local-exec" {
    command = "echo - this is destroying!!!!!!!!!!"
    when    = destroy
  }


}

/*
resource "aws_security_group" "demo-sg" {
  name        = "Demo-SG"
  description = "Open SSH and HTTP Ports"

tags = {
  "Name" = "My-SecurityGroup" 
}
  ingress {
    description = "SSH Port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }

  ingress {
    description = "HTTP Port"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
    

  egress {
    description = "HTTP Port"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
}
*/
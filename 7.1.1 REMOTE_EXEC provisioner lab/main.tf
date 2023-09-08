resource "aws_instance" "demoec2" {
  ami           = "ami-02b8534ff4b424939"
  instance_type = "t2.micro"
  key_name      = "DevOps"

  tags = {
    "Name" = "Test-Server"
  }

  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:\\Users\\manoj\\Downloads\\DevOps.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo installing HTTPD Web Server",
      "sudo yum install httpd -y",
      "echo starting HTTPD Web Server",
      "sudo systemctl start httpd",
      "echo enabling HTTPD Web Server",
      "sudo systemctl enable httpd"
    ]

  }

  /*
  provisioner "remote-exec" {
    inline = [
      "echo starting HTTPD Web Server",
      "sudo systemctl start httpd"
    ]
  }

  provisioner "remote-exec" {
    inline = [
      "echo enabling HTTPD Web Server",
      "sudo systemctl enable httpd"
    ]
  }
*/

}


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

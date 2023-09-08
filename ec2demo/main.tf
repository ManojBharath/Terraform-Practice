resource "aws_instance" "demoec2" {
  for_each      = toset(var.typeofinstance)
  ami           = "ami-02b8534ff4b424939"
  instance_type = each.key

}



/*
us east 2 ami
rhel_amiid   = "ami-02b8534ff4b424939"
  ubuntu_amiid = "ami-024e6efaf93d85776"
  amazon_amiid = "ami-0911e88fb4687e06b"
  */
#!/bin/bash
yum update -y
yum install httpd -y
echo "Hello Associates!!! welcome to Terraform Lectures - $(hostname -f) ." >> /var/www/html/index.html
systemctl enable httpd
systemctl start httpd
systemctl status httpd
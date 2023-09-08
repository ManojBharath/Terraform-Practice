variable "ami_filters" {
  type = map(string)
  default = {
    "name"                = "RHEL-9.2.0_HVM-20230503-x86_64-*"
    "root-device-type"    = "ebs"
    "virtualization-type" = "hvm"
  }

}
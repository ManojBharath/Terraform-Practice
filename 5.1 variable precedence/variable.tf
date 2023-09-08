variable "amiid" {
  type    = string
  default = "ami-02b8534ff4b424939"
/*
  validation {
    condition     = length(var.amiid) > 4 && substr(var.amiid, 0, 4) == "ami-"
    error_message = "The given amiid is invalid AMI id, It should be like starting with \"ami- \"."
  }
*/
}

variable "instancetype" {
  type    = string
  default = "t2.micro"
/*
  validation {
    condition     = contains(["t2.medium", "t2.micro"], var.instancetype)
    error_message = "It should be like 't2.micro', 't2.medium'"
  }
  */

}

variable "az" {
  type    = string
  default = "us-east-2a"
/*
  validation {
    condition     = contains(["us-east-2a", "us-east-2c"], var.az)
    error_message = "It should be like 'us-east-2a', 'us-east-2b'"
  }
  */
}
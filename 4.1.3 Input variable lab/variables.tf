variable "amiid" {
  type        = string
  description = "EC2 instance AMI ID"
  default     = "ami-02b8534ff4b424939"
}

variable "typeofinstance" {
  type        = string
  description = "EC2 instance kind"
  default     = "t2.micro"
}

variable "zone" {
  type        = string
  description = "Servers Availability Zones"
  default     = "us-east-2b"
}

variable "commontags" {
  type        = map(any)
  description = "commontags for server"
  default = {
    "Name"         = "Test-Server",
    "Environment"  = "Test",
    "ManagedBy"    = "Test Lead",
    "MaintainedBy" = "DevOpsTeam",
    "Version"      = "Sprint - V1.0"
  }
}
variable "typeofinstance" {
  type = list(string)
  default = [
    "t2.micro",
    "t2.medium",
    "t2.large",
  ]

}
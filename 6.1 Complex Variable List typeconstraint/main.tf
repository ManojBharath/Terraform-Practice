resource "aws_iam_user" "myusers" {
  for_each = toset(["Manoj", "Bharath", "Pasala", "Kshatriya"])
  name     = each.value

}

resource "aws_iam_group" "admin" {
    name = "admin"
    path = "/"
}

resource "aws_iam_group" "dev" {
    name = "dev"
    path = "/"
}

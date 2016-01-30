resource "aws_iam_user" "creasty" {
    name = "creasty"
    path = "/"
}

resource "aws_iam_user" "delta-test" {
    name = "delta-test"
    path = "/"
}

resource "aws_iam_user" "main-cli" {
    name = "main-cli"
    path = "/"
}

resource "aws_iam_user" "creasty-infra" {
    name = "creasty-infra"
    path = "/"
}

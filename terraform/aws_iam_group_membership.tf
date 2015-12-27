resource "aws_iam_group_membership" "admin" {
    name  = "admin-group-membership"
    group = "admin"
    users = [
      "${aws_iam_user.main-cli.name}",
      "${aws_iam_user.creasty-infra.name}"
    ]
}

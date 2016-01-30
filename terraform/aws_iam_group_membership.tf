resource "aws_iam_group_membership" "admin" {
    name  = "admin-group-membership"
    group = "${aws_iam_group.admin.name}"
    users = [
      "${aws_iam_user.creasty.name}"
    ]
}

resource "aws_iam_group_membership" "dev" {
    name  = "dev-group-membership"
    group = "${aws_iam_group.dev.name}"
    users = [
      "${aws_iam_user.main-cli.name}",
      "${aws_iam_user.creasty-infra.name}"
    ]
}

resource "aws_iam_group_policy" "AdministratorAccess-admin" {
    name   = "AdministratorAccess-admin"
    group  = "${aws_iam_group.admin.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "AmazonRDSFullAccess-dev" {
    name   = "AmazonRDSFullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "rds:*",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:GetMetricStatistics",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAvailabilityZones",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcs",
        "sns:ListSubscriptions",
        "sns:ListTopics",
        "logs:DescribeLogStreams",
        "logs:GetLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "AmazonEC2FullAccess-dev" {
    name   = "AmazonEC2FullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "ec2:*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "elasticloadbalancing:*",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "cloudwatch:*",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "autoscaling:*",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "IAMFullAccess-dev" {
    name   = "IAMFullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "iam:*",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "AmazonElastiCacheFullAccess-dev" {
    name   = "AmazonElastiCacheFullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "elasticache:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "AmazonS3FullAccess-dev" {
    name   = "AmazonS3FullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "CloudFrontFullAccess-dev" {
    name   = "CloudFrontFullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Action": [
        "cloudfront:*",
        "iam:ListServerCertificates"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_group_policy" "AmazonVPCFullAccess-dev" {
    name   = "AmazonVPCFullAccess-dev"
    group  = "${aws_iam_group.dev.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Action": [
        "cloudfront:*",
        "iam:ListServerCertificates"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}

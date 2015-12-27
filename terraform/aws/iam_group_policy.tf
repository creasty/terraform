resource "aws_iam_group_policy" "AmazonRDSFullAccess-admin" {
    name   = "AmazonRDSFullAccess-admin"
    group  = "admin"
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

resource "aws_iam_group_policy" "AmazonEC2FullAccess-admin" {
    name   = "AmazonEC2FullAccess-admin"
    group  = "admin"
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

resource "aws_iam_group_policy" "IAMFullAccess-admin" {
    name   = "IAMFullAccess-admin"
    group  = "admin"
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

resource "aws_iam_group_policy" "AmazonElastiCacheFullAccess-admin" {
    name   = "AmazonElastiCacheFullAccess-admin"
    group  = "admin"
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

resource "aws_iam_group_policy" "AmazonS3FullAccess-admin" {
    name   = "AmazonS3FullAccess-admin"
    group  = "admin"
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

resource "aws_iam_group_policy" "CloudFrontFullAccess-admin" {
    name   = "CloudFrontFullAccess-admin"
    group  = "admin"
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

resource "aws_iam_group_policy" "AmazonVPCFullAccess-admin" {
    name   = "AmazonVPCFullAccess-admin"
    group  = "admin"
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

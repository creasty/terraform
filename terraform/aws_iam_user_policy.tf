resource "aws_iam_user_policy" "AmazonS3FullAccess-delta-test" {
    name   = "AmazonS3FullAccess-delta-test"
    user   = "${aws_iam_user.delta-test.name}"
    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetBucketLocation",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::delta-test-1"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::delta-test-1/*"
    }
  ]
}
POLICY
}

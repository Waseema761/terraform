provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "admin_user" {
  name = "zoro"

  tags = {
    description = "Technical Team Lead"
  }
}

resource "aws_iam_policy" "adminuser" {
  name = "AdminUsers"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "1234567890",
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "zoro_admin_access" {
  user       = aws_iam_user.admin_user.name
  policy_arn = aws_iam_policy.adminuser.arn
}


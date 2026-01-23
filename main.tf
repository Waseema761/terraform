provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "admin_user" {
  name = "asta"

  tags = {
    description = "Technical Team Lead"
  }
}

resource "aws_iam_user_policy_attachment" "zoro_s3_full_access" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

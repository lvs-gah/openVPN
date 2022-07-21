resource "aws_iam_policy" "open-vpn" {
  name   = "open-vpn"
  policy = data.aws_iam_policy_document.open-vpn.json
}

resource "aws_iam_role_policy_attachment" "open-vpn" {
  role       = aws_iam_role.main.name
  policy_arn = aws_iam_policy.open-vpn.arn
}


resource "aws_iam_role" "main" {
  name = "open-vpn"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json
}


resource "aws_iam_instance_profile" "main" {
  name = "open-vpn-profile"
  role = aws_iam_role.main.name
}


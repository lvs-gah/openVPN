resource "aws_security_group" "main" {

  ingress {
    description = "HTTPS"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = aws_default_vpc.default_vpc.id
  tags = {
    Name = "allow all"
  }
}

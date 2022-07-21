resource "aws_default_subnet" "default_subnet" {
  availability_zone = "eu-west-2a"
  tags = {
      Name = "Default Subnet"
  }
}
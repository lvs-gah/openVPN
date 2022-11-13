data "aws_vpc" "default_vpc" {
    default = true
}

data "aws_subnet" "default_subnet" {
  availability_zone = var.availability_zone
  }

data "aws_ami" "linux2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }


  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "ubuntu" {

  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
  name   = "architecture"
  values = ["arm64"]
  }

  owners = ["099720109477"]
}
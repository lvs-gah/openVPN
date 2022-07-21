resource "aws_instance" "open-vpn" {
// uncomment if you want to use amazon linux 2 ami
  # ami                          = data.aws_ami.linux2.id 
  ami                          = data.aws_ami.ubuntu.id
  instance_type                = var.instance_type
  subnet_id                    = aws_default_subnet.default_subnet.id
  iam_instance_profile         = aws_iam_instance_profile.main.name
  vpc_security_group_ids       = [aws_security_group.main.id]
  associate_public_ip_address  = true
  user_data_replace_on_change = true

  tags = {
    Name = "OpenVPN Server"
  }

  root_block_device {
    volume_size = var.root_volume_size # in GB 

  }

// uncomment if you want to use amazon linux 2
  # user_data = file("${path.module}/userdata_amazon_linux2.tpl",
  # )
  user_data = file("${path.module}/userdata_ubuntu_arm.tpl",
  )

}
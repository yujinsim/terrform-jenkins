resource "aws_instance" "yjsim_weba" {
  ami                         = "ami-0ee82191e264e07cc"
  instance_type               = "t2.micro"
  key_name                    = "yjsim-key"
  vpc_security_group_ids      = [aws_security_group.yjsim_sg.id]
  availability_zone           = "ap-northeast-2a"
  private_ip                  = "10.0.0.11"
  subnet_id                   = aws_subnet.yjsim_puba.id
  associate_public_ip_address = true
  user_data = file("./install.sh")
}

output "public_ip" {
  value = aws_instance.yjsim_weba.public_ip
}

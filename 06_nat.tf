resource "aws_eip" "yjsim_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "yjsim_nat" {
  allocation_id = aws_eip.yjsim_eip.id
  subnet_id     = aws_subnet.yjsim_puba.id

  tags = {
    Name = "yjsim-nat"
  }
}



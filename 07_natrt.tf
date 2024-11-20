resource "aws_route_table" "yjsim_private_rt" {
  vpc_id = aws_vpc.yjsim_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.yjsim_nat.id
  }

  tags = {
    Name = "yjsim-private-rt"
  }
}
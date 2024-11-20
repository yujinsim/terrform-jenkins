resource "aws_route_table" "yjsim_public_rt" {
  vpc_id = aws_vpc.yjsim_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.yjsim_ig.id
  }

  tags = {
    Name = "yjsim_public-rt"
  }
}
resource "aws_internet_gateway" "yjsim_ig" {
  vpc_id = aws_vpc.yjsim_vpc.id

  tags = {
    Name = "yjsim-ig"
  }
}

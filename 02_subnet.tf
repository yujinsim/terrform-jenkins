resource "aws_subnet" "yjsim_puba" {
  vpc_id            = aws_vpc.yjsim_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "yjsim-puba"
  }
}

resource "aws_subnet" "yjsim_pubc" {
  vpc_id            = aws_vpc.yjsim_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "yjsim-pubc"
  }
}

resource "aws_subnet" "yjsim_pria" {
  vpc_id            = aws_vpc.yjsim_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "yjsim-pria"
  }
}

resource "aws_subnet" "yjsim_pric" {
  vpc_id            = aws_vpc.yjsim_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "yjsim-pric"
  }
}

resource "aws_subnet" "yjsim_dba" {
  vpc_id            = aws_vpc.yjsim_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "yjsim-dba"
  }
}

resource "aws_subnet" "yjsim_dbc" {
  vpc_id            = aws_vpc.yjsim_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "yjsim-dbc"
  }
}

resource "aws_db_subnet_group" "db_sg" {
  name       = "main"
  subnet_ids = [aws_subnet.yjsim_dba.id, aws_subnet.yjsim_dbc.id]
}

resource "aws_db_instance" "yjsim_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  db_name                = "wordpress"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = "root"
  password               = "It12345!"
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = false
  db_subnet_group_name   = aws_db_subnet_group.db_sg.name
  vpc_security_group_ids = [aws_security_group.yjsim_sg.id]

  tags = {
    Name = "yjsim-db"
  }
}

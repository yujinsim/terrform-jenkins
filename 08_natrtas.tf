resource "aws_route_table_association" "yjsim_natrtas_pria" {
  subnet_id      = aws_subnet.yjsim_pria.id
  route_table_id = aws_route_table.yjsim_private_rt.id
}

resource "aws_route_table_association" "yjsim_natrtas_pric" {
  subnet_id      = aws_subnet.yjsim_pric.id
  route_table_id = aws_route_table.yjsim_private_rt.id
}

resource "aws_route_table_association" "yjsim_natrtas_dba" {
  subnet_id      = aws_subnet.yjsim_dba.id
  route_table_id = aws_route_table.yjsim_private_rt.id
}

resource "aws_route_table_association" "yjsim_natrtas_dbc" {
  subnet_id      = aws_subnet.yjsim_dbc.id
  route_table_id = aws_route_table.yjsim_private_rt.id
}
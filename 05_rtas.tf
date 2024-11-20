resource "aws_route_table_association" "yjsim_rtas_puba" {
  subnet_id      = aws_subnet.yjsim_puba.id
  route_table_id = aws_route_table.yjsim_public_rt.id
}

resource "aws_route_table_association" "yjsim_rtas_pubc" {
  subnet_id      = aws_subnet.yjsim_pubc.id
  route_table_id = aws_route_table.yjsim_public_rt.id
}
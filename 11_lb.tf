resource "aws_lb" "yjsim_alb" {
  name = "yjsim-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.yjsim_sg.id]
  subnets = [aws_subnet.yjsim_puba.id, aws_subnet.yjsim_pubc.id]

    tags = {
        Name = "yjsim-alb"
    }
}

output "alb_dns_name" {
  value = aws_lb.yjsim_alb.dns_name
}
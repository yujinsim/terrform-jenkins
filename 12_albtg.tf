resource "aws_lb_target_group" "yjsim_albtg" {
  name     = "yjsim-albtg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.yjsim_vpc.id

  health_check {
    enabled             = true
    path                = "/health.html"
    interval            = 5
    matcher             = "200"
    port                = 80
    protocol            = "HTTP"
    timeout             = 2
    unhealthy_threshold = 3
  }
}

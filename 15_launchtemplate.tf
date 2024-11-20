resource "aws_launch_template" "yjsim_template" {

  name_prefix            = "yjsim-template"
  image_id               = aws_ami_from_instance.yjsim_ami.id
  instance_type          = "t2.micro"
  key_name               = "yjsim-key"
  vpc_security_group_ids = [aws_security_group.yjsim_sg.id]

  block_device_mappings {
    device_name = "/dev/sdf"
    ebs {
      volume_size = 10
      volume_type = "gp2"
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "yjsim-template"
    }
  }
}

resource "aws_autoscaling_group" "autoscaling_group" {
  name                      = "autoscaling-group"
  vpc_zone_identifier       = [aws_subnet.yjsim_puba.id, aws_subnet.yjsim_pubc.id]
  desired_capacity          = 1
  max_size                  = 3
  min_size                  = 1
  health_check_grace_period = 60
  health_check_type         = "EC2"
  force_delete              = false

  launch_template {
    id      = aws_launch_template.yjsim_template.id
    version = "$Latest"
  }
}

# Create a new load balancer attachment
resource "aws_autoscaling_attachment" "lb_autoscaling" {
  autoscaling_group_name = aws_autoscaling_group.autoscaling_group.id
  lb_target_group_arn    = aws_lb_target_group.yjsim_albtg.arn
}

resource "aws_ami_from_instance" "yjsim_ami" {
  name               = "yjsim-ami"
  source_instance_id = aws_instance.yjsim_weba.id

  depends_on = [ aws_instance.yjsim_weba ]
}
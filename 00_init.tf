terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

# resource "aws_key_pair" "yjsim_key" {
#   key_name   = "yjsim-key"
#   public_key = file("yjsim.pub")

#   tags = {
#     Name = "yjsim-key"
#   }
# }
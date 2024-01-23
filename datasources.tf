# data "aws_subnets" "subnets" {
#   filter {
#     name   = "tag:Name"
#     values = var.subnet_tags
#   }
# }

data "aws_ami" "latest-amazon-linux-image" {
  most_recent = true
  owners      = [ "amazon" ]
  filter {
    name      = "name"
    values    = [ "amzn2-ami-hvm-*-x86_64-gp2" ]
  }
  filter {
    name      = "virtualization-type"
    values    = [ "hvm" ]
  }
}

# data "aws_subnets" "app_subnet" {
#   filter {
#     name   = "tag:Name"
#     values = var.app_subnets
#   }
# }


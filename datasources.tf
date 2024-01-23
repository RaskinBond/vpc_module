data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.vnet.id]
  }
  tags     = {
    Tier   = "subnets"
  }
}


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


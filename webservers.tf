# resource "aws_key_pair" "keypair" {
#   key_name                    = var.webserver_info.key_name
#   public_key                  = file(var.key_path)
# }

resource "aws_instance" "WebServer" {
  count                         = var.webserver_info.count
  ami                           = data.aws_ami.latest-amazon-linux-image.id
  instance_type                 = var.webserver_info.instance_type
  associate_public_ip_address   = var.webserver_info.public_ip_enabled
  subnet_id                     = lookup(aws_subnet.subnets[count.index].tags_all, "Name", "")
  vpc_security_group_ids        = [aws_security_group.Web-SG.id]

  tags                          = {
      Name                      = "${local.env_prefix}-server"
  }
  depends_on           = [ aws_vpc.vnet, aws_subnet.subnets ]

}
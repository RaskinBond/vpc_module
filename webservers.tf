# resource "aws_key_pair" "keypair" {
#   key_name                    = var.webserver_info.key_name
#   public_key                  = file(var.key_path)
# }

resource "aws_instance" "WebServer" {
  count                         = length(var.web_subnet_tags) 
  ami                           = data.aws_ami.latest-amazon-linux-image.id
  instance_type                 = var.webserver_info.instance_type
  associate_public_ip_address   = var.webserver_info.public_ip_enabled
  key_name                      = local.key_name 
  subnet_id                     = aws_subnet.pub_subnets[count.index].id
  vpc_security_group_ids        = [aws_security_group.Web-SG.id]

  tags                          = {
      Name                      = local.webserver_tags[count.index]
  }
  depends_on = [ aws_vpc.vnet, aws_subnet.pub_subnets]

}
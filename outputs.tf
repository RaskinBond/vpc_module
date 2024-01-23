output "subnet_test" {
    value = aws_subnet.subnets[0]
}

output "ec2_public_ip" {
    value = "${join(",", aws_instance.WebServer.*.public_ip)}"
}
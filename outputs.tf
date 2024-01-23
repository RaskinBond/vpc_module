output "subnet_test" {
    value = aws_subnet.subnets[0]
}

# output "instance_public_ip" {
#   description = "Public IP address of the EC2 instance"
#   value       = aws_instance.WebServer.public_ip
# }

output "ec2_public_ip" {
    value = [ "${join(",", aws_instance.WebServer.*.public_ip)}" ]
}

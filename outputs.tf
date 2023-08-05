output "aws_instance_public_info" {
    value = [aws_instance.web.public_dns, aws_instance.web.public_ip]
}
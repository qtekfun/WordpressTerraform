output "aws_instance_public_info" {
  value = [aws_instance.wordpress.public_dns, aws_instance.wordpress.public_ip]
}
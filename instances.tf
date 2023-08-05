data "aws_ssm_parameter" "ami" {
  name = var.ami_ssm_parameter
}

resource "aws_instance" "wordpress" {
  ami                    = data.aws_ssm_parameter.ami.value
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  user_data = <<EOF
#! /bin/bash
sudo apt update
sudo apt install nginx -y
sudo service nginx start
sudo rm /var/www/html/index.nginx-debian.html
echo '<html><head><title>Wordpress Server</title></head><body style=\"background-color:#1F778D\"><p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size:28px;\">You did it!</span></span></p></body></html>' | sudo tee /var/www/html/index.html
EOF

  tags = {
    Name = var.project
  }
}
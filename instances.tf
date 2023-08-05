data "aws_ami" "amazon_linux" {
  most_recent = true
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}
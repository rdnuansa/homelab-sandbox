resource "aws_key_pair" "deployer" {
  key_name   = "dito-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqObYdJf/yp1t953dL3NEAs9sqQl0Csu3fV4imJVuUHeDZpTKAyIknbgVSHd9VJNB7PDe0SgZCyOUnm2vhNmf0lGR/wHyQ4QUFFUx7QMudfpoVkvD2BWZRLfWF1EYx5kANP6a0Jlg0hObmi8Wkd9HgmRQJQfNgD9BCNCoxKXqhGMxSf9cKeUncPOmDVw6fNoHQb0LQMpGmafhupccFzV3hvT99E7/48o9/Y7BjF3YLiqqRLQUyICsHfUWwrCQabrSdk8NEQKnRFCXG7Gz/JaY+od/C6OTFrw7JV9IMKzOupuhxY2W4P2bHz1JSD+AHeGclgtzcOOh1jYaR/uTnisriyFmsSS9Rt55wtDTBf0yW/2f9SqUMLCmUxeokVIWWqOC3qfdqOvsL6UChElFdSOyUYSdrg2yPZLIB9zVup/uuTR+TSsCUVlMuc6PrYDNQ5brTS1kZPLp032B2nIpL1oLnvh75FKX7PZ6DYqRT7//00thSIFomXbPE4jZdohmchSc= dito@RD-DESKTOP"
}

resource "aws_instance" "sandbox-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = var.name
  }
}
resource "aws_security_group" "my_SG" {
  name        = "my_SG"
  vpc_id      = aws_vpc.my_VPC.id

 

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "http"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "https"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "my_SG"
  }
}

resource "aws_instance" "my_EC2_Instance" {
  ami = var.ami-name-id 
  instance_type = var.instance-type 
  key_name   = "../fortesting.pem"
  subnet_id = aws_subnet.my_Publicsubnet.id
  security_groups = [aws_security_group.my_SG.id]
  associate_public_ip_address = true
    tags = {
        Name = "my_EC2_Instance-public"
    }

}


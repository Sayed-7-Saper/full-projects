resource "aws_vpc" "my_VPC" {
  cidr_block = var.cidr_ip_vpc 
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "my_VPC-test"
  }
}


resource "aws_subnet" "my_Publicsubnet" {
  vpc_id     = aws_vpc.my_VPC.id
  cidr_block = var.cidr_ip_subnet

  tags = {
    Name = "my_Publicsubnet1"
  }
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_VPC.id

  tags = {
    Name = "my_igw"
  }
}

resource "aws_route_table" "my_routetable" {
  vpc_id = aws_vpc.my_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "my_routetable"
  }
}


resource "aws_route_table_association" "my-rt-association" {
  subnet_id      = aws_subnet.my_Publicsubnet.id
  route_table_id = aws_route_table.my_routetable.id
}


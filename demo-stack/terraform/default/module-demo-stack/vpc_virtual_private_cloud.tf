resource "aws_internet_gateway" "default_igw" {
  tags = {
    Name = "default-igw"
  }

  tags_all = {
    Name = "default-igw"
  }

  vpc_id = aws_vpc.default_vpc.id
}

resource "aws_route_table" "rtb_3098c956" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default_igw.id
  }

  vpc_id = aws_vpc.default_vpc.id
}

resource "aws_security_group" "sg_04206f3322d2cbdcb" {
  description = "launch-wizard-1 created 2022-11-09T07:17:28.390Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
  }

  name   = "launch-wizard-1"
  vpc_id = aws_vpc.default_vpc.id
}

resource "aws_security_group" "sg_5be3941e" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
  }

  name   = "default"
  vpc_id = aws_vpc.default_vpc.id
}

resource "aws_subnet" "pub_subnet" {
  tags = {
    Name = "pub-subnet"
  }

  tags_all = {
    Name = "pub-subnet"
  }

  availability_zone                   = "ap-northeast-1a"
  cidr_block                          = "172.31.0.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = var.aws_subnet_pub_subnet_vpc_id
}

resource "aws_vpc" "default_vpc" {
  tags = {
    Name = "default-VPC"
  }

  tags_all = {
    Name = "default-VPC"
  }

  cidr_block           = "172.31.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}


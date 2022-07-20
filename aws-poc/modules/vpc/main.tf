resource "aws_vpc" "redshift_vpc" {
    cidr_block       = var.vpc_cidr
    instance_tenancy = "default"
    tags = {
        Name = "redshift-vpc"
    }
}


resource "aws_internet_gateway" "redshift_vpc_gw" {
    vpc_id = aws_vpc.redshift_vpc.id
    depends_on = [
        aws_vpc.redshift_vpc
    ]
}

resource "aws_default_security_group" "redshift_security_group" {
    vpc_id     = aws_vpc.redshift_vpc.id
    ingress {
        from_port   = var.ingress_port
        to_port     = var.ingress_port
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "redshift-sg"
    }
    depends_on = [
        aws_vpc.redshift_vpc
    ]
}

resource "aws_subnet" "redshift_subnet_1" {
  vpc_id     = aws_vpc.redshift_vpc.id
  cidr_block        = var.subnet_cidr_1
  availability_zone = var.availability_zone1
  map_public_ip_on_launch = "true"

  tags = {
    Name = "redshift-subnet-1"
  }

  depends_on = [
    aws_vpc.redshift_vpc
  ]
}


resource "aws_subnet" "redshift_subnet_2" {
  vpc_id     =aws_vpc.redshift_vpc.id
  cidr_block        = var.subnet_cidr_2
  availability_zone = var.availability_zone2
  map_public_ip_on_launch = "true"

  tags = {
    Name = "redshift-subnet-2"
  }

  depends_on = [
    aws_vpc.redshift_vpc
  ]
}

resource "aws_redshift_subnet_group" "redshift_subnet_group" {
  name       = "redshift-subnet-group"
  subnet_ids = [aws_subnet.redshift_subnet_1.id, aws_subnet.redshift_subnet_2.id]

  tags = {
    environment = "dev"
    Name = "redshift-subnet-group"
  }
}
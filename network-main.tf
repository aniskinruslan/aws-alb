# Create the VPC
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-vpc"
    Environment = var.app_environment
  }
}

# Define the public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.aws_az_1

  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-public-subnet"
    Environment = var.app_environment
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr_2  
  availability_zone = var.aws_az_2

  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-public-subnet"
    Environment = var.app_environment
  }
}

#Define the internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-igw"
    Environment = var.app_environment
  }
}

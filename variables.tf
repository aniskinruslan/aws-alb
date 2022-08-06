# Provider variables

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}

variable "aws_region" {
  type = string
  description = "AWS region"
}

# Application variables

variable "app_name" {
  type        = string
  description = "Application name"
}

variable "app_environment" {
  type        = string
  description = "Application environment"
}

# DNS variables
variable "public_dns_name" {
  type        = string
  description = "Public DNS name"
}      

variable "dns_hostname" {
  type        = string
  description = "DNS Hostname for load balancer"
}

## Virtual Machine Module

variable "ec2_count" {
  type        = number
  description = "Number of EC2 instances to create"
  default     = 1
}

variable "linux_instance_type" {
  type        = string
  description = "EC2 instance type for Linux Server"
  default     = "t2.micro"
}

#Network variables 

# AWS AZ #1
variable "aws_az_1" {
  type        = string
  description = "AWS AZ"
  default     = "us-east-1a"
}
# AWS AZ #2
variable "aws_az_2" {
  type        = string
  description = "AWS AZ"
  default     = "us-east-1b"
}
# AWS AZ #3
variable "aws_az_3" {
  type        = string
  description = "AWS AZ"
  default     = "us-east-1c"
}
# VPC
variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC"
  default     = "10.11.0.0/16"
}

# Public Subnet #1
variable "public_subnet_cidr" {
  type        = string
  description = "CIDR for the public subnet"
  default     = "10.11.2.0/24"
}

# Public Subnet #2
variable "public_subnet_cidr_2" {
  type        = string
  description = "CIDR for the public subnet"
  default     = "10.11.4.0/24"
}
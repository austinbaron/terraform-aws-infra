# variable "aws_region" {
#   default = "us-east-1"  
#   description = "aws region"
#   type = string
# }

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "vpc cird block"
  type = string
}

variable "vpc_name" {
  default = "my-vpc"
  description = "vpc name"
  type = string
}


variable "public_subnet_cidr" {
  default = "10.0.1.0/26"
  description = "public_subnet_cidr"
  type = string
}

variable "public_subnet_name" {
  default = "BaronAustin-Public-Subnet"
  description = "public_subnet_name"
  type = string
}

variable "public_subnet_availability_zone" {
  default = "us-east-1a"  
  description = "public_subnet_availability_zone"
  type = string
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
  description = "private_subnet_cidr"
  type = string
}

variable "private_subnet_name" {
  default = "BARON-Private-Subnet"
  description = "private_subnet_name"
  type = string
}

variable "private_subnet_availability_zone" {
  default = "us-east-1a"  
  description = "private_subnet_availability_zone"
  type = string
}

variable "igw_name" {
  default = "BARON-Main-Internet-Gateway"
  description = "igw_name"
  type = string
}

variable "public_route_table_name" {
  default = "BARON-Public-Route-Table"
  description = "public_route_table_name"
  type = string
}

variable "private_route_table_name" {
  default = "AUSTIN-Private-Route-Table"
  description = "private_route_table_name"
  type = string
}


variable "destination_cidr_block" {
  default = "0.0.0.0/0"
  description = "destination_cidr_block"
  type = string
}


variable "nat_eip_name" {
  default = "BARON-NAT-EIP"
  description = "nat_eip_name"
  type = string
}

variable "nat_gateway_name" {
  default = "BARON-NAT-Gateway"
  description = "nat_gateway_name"
  type = string


}














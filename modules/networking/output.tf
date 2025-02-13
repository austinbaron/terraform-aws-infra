output "my_vpc" {
  description = "ID of the created VPC"
  value       = aws_vpc.my_vpc.id
}

output "BARON-Public-Route-Table" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "AUSTIN-Private-Route-Table" {
  description = "ID of the private route table"
  value       = aws_route_table.private.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output  "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "BARON-Main-Internet-Gateway" {
  #description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "BARON-NAT-Gateway" {
  #description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.nat_gateway.id
}

output "BARON-NAT-EIP" {
  #description = "ID of the NAT Elastic IP"
  value       = aws_eip.nat_eip.id
}

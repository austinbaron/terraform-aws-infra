# Create a Route Table for Public Subnet
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "Public-Route-Table"
  }
}

# Add a Route for Public Internet Access
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_internet_gateway.igw.id
}

# Associate Public Subnet with Public Route Table
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

# Create an Elastic IP for NAT Gateway
resource "aws_eip" "nat_eip" {
  vpc = true
  tags = {
    Name = var.nat_eip_name
  }
}

# Create a NAT Gateway
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    Name = var.nat_gateway_name
  }
}

# Create a Route Table for Private Subnet
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = var.private_route_table_name
  }
}

# Add a Route for Outbound Internet Access via NAT Gateway
resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_rt.id
  destination_cidr_block = var.destination_cidr_block
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}

# Associate Private Subnet with Private Route Table
resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_rt.id
}
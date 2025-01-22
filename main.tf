##infra module
module "infra" {
  source   = "./modules/networking"
  vpc_name = "my_vpc"
  public_route_table_name = "BARON-Public-Route-Table"
  private_route_table_name = "AUSTIN-Public-Route-Table"
  public_subnet_cidr = "10.0.1.0/26"
  private_subnet_cidr = "10.0.2.0/24"
  vpc_cidr_block = "10.0.0.0/16"
  private_subnet_availability_zone = "us-east-1a"
  public_subnet_availability_zone = "us-east-1a"
  igw_name = "BARON-Main-Internet-Gateway"
  destination_cidr_block = "0.0.0.0/0"
  nat_eip_name = "BARON-NAT-EIP"
  nat_gateway_name = "BARON-NAT-Gateway"
  
  

}
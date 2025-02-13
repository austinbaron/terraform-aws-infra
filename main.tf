##infra module
module "networking" {
  source   = "./modules/networking"
  vpc_name = var.vpc_name
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

# module "ecs" {
#   source = "./modules/ecs"
#   #vpc_id = module.networking.vpc_id
#   #private_subnet_id = module.networking.private_subnet_id

#   depends_on = [ module.infra ]
# }


module "ecs" {
  source              = "./modules/ecs"
  vpc_id              = module.networking.vpc_id
  ecs_cluster_name    = var.ecs_cluster_name
  ecs_task_family     = var.ecs_task_family
  container_name      = var.container_name
  container_image     = var.container_image
  container_port      = var.container_port
  subnet_id           = module.networking.private_subnet_id

}
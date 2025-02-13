

output "vpc_id" {
  value = module.networking.main_vpc
}

output "private_subnet_id" {
  value = module.networking.private_subnet_id
}

output "private_route_table_id" {
  value = module.networking.private_rt.id
  
}

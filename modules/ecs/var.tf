variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "VPC CIDR block"
  type = string
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
  description = "Subnet CIDR block"
  type = string
}

variable "ecs_cluster_name" {
  default = "my-ecs-cluster"
  description = "Name of the ECS cluster"
  type = string
}

variable "ecs_task_family" {
  default = "my-ecs-task"
  description = "ECS Task Definition Family"
  type = string
}

variable "container_name" {
  default = "my-container"
  description = "ECS Container Name"
  type = string
}

variable "container_image" {
  default = "nginx:latest"
  description = "Docker image to use for the container"
  type = string
}

variable "container_port" {
  default = 80
  description = "Port the container exposes"
  type = number
}

variable "vpc_id" {
  
}

variable "subnet_id" {
  
}

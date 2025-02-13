

variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_name" {
  default = "main-vpc"
  type = string
}

variable "ecs_cluster_name" {
  default = "my-ecs-cluster"
}

variable "ecs_task_family" {
  default = "my-ecs-task"
  type        = string
}

variable "container_name" {
  default = "my-container"
  type        = string
}

variable "container_image" {
  default = "nginx:latest"
  type        = string
}

variable "container_port" {
  default = "80"
  type        = number
}

variable "subnet_id" {
  default = "public-subnet"
  type        = string
}
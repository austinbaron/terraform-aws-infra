# ✅ Create an ECS Cluster
resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.ecs_cluster_name

  tags = {
    Name = "ECS-Cluster"
  }
}

# ✅ Create an ECS Service
resource "aws_ecs_service" "ecs_service" {
  name            = "ecs-service"
  cluster        = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.ecs_task.arn
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = var.subnet_id
    security_groups  = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }

  desired_count = 1
}

# ✅ Create an ECS Task Definition
resource "aws_ecs_task_definition" "ecs_task" {
  family                   = var.ecs_task_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  memory                   = "512"
  cpu                      = "256"

  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = var.container_image
      cpu   = 256
      memory = 512
      essential = true
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.container_port
        }
      ]
    }
  ])
}
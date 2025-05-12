variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = " "
}


variable "capacity_providers" {
  description = "List of ECS capacity providers (e.g., FARGATE, FARGATE_SPOT)"
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
}

variable "default_capacity_provider" {
  description = "Default capacity provider for the ECS cluster"
  type        = string
  default     = "FARGATE"
}

variable "environment" {
  description = "Environment tag (e.g., dev, staging, prod)"
  type        = string
  default     = " "
}

variable "project_name" {
  description = "Project name tag"
  type        = string
  default     = "ecs-project"
}

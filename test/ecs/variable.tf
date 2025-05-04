variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "second-ecs-tf-cluster"
}

variable "project_name" {
  default = "myapp"
}

variable "container_image" {
  description = "Docker image URL"
  type        = string
}

variable "container_port" {
  default = 80
}

variable "cpu" {
  default = 256
}

variable "memory" {
  default = 512
}

variable "execution_role_arn" {
  description = "IAM role ARN for ECS task execution"
  type        = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group_id" {
  type = string
}

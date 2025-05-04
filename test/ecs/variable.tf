variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "second_cluster"
}

variable "services" {
  description = "Map of ECS services with configuration"
  type = map(object({
    memory = number
    container_definitions = map(object({
      image     = string
      essential = bool
      port_mappings = list(object({
        containerPort = number
        protocol      = string
      }))
    }))
    subnet_ids = list(string)
    security_group_rules = map(object({
      type        = string
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }))
  }))
}

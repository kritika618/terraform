variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "second_cluster"
}

variable "services" {
  description = "Map of ECS services with configuration"
  type = map(object({
    cpu            = number
    memory         = number
    container_port = number
    image          = string
  }))
}

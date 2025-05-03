module "ecs" {
  source  = "terraform-aws-modules/ecs/aws"
  version = "5.12.1"

  cluster_name = var.ecs_cluster_name
}
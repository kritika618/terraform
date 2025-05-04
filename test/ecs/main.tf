module "ecs" {
  source       = "../../.modules/aws/ecs"
  cluster_name = var.cluster_name
  services     = var.services
}

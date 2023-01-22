resource "aws_ecs_cluster" "naveedcluster" {
  name = "naveed"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
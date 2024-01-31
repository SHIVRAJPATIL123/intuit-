provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" 
  }
}

# Install Redis Helm chart
resource "helm_release" "redis" {
  name       = "redis"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis-cluster"
  timeout = 1000

  set {
    name  = "cluster.enabled"
    value = "true"
  }
}

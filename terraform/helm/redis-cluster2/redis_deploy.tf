provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" 
  }
}

# Install Redis Helm chart
resource "helm_release" "redis" {
  name       = "redis"
  repository = "oci://registry-1.docker.io/bitnamicharts/"
  chart      = "redis"

  set {
    name  = "cluster.enabled"
    value = "true"
  }
}
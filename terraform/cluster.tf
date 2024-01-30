terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.34.1"
    }
  }
}


variable "do_token" {
  sensitive = true
}

provider "digitalocean" {
  token = var.do_token
}

# Create a DigitalOcean Kubernetes cluster
resource "digitalocean_kubernetes_cluster" "cluster1" {
  name    = var.cluster1_name
  region  = var.cluster_region
  version = var.cluster_version  
  node_pool {
    name       = "pool-default"
    size       = var.node_size
    node_count = 1
  }
}

resource "digitalocean_kubernetes_cluster" "cluster2" {
  name    = var.cluster2_name
  region  = var.cluster_region
  version = var.cluster_version 
  node_pool {
    name       = "pool-default"
    size       = var.node_size
    node_count = 1
  }
}
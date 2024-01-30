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




resource "digitalocean_kubernetes_cluster" "clusters" {
  for_each = var.clusters
  name    = each.value.cluster_name
  region  = each.value.cluster_region
  version = each.value.cluster_version 
  node_pool {
    name       = "pool-default"
    size       = each.value.node_size
    node_count = 1
  }
}
variable "cluster1_name" {
  default = "first"
}
variable "cluster2_name" {
  default = "second"
}
variable "cluster_version" {
  default = "1.29.0-do.0"
}
variable "cluster_region" {
  default = "nyc1"
}
variable "node_size" {
  default = "s-2vcpu-2gb"
}

variable "clusters" {
 type = map(object({
    cluster_name = optional(any)
    cluster_region = optional(any)
    cluster_version = optional(any)
    node_size  = optional(any)
}))
default = {}
}
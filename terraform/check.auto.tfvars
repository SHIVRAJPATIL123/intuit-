# example.tfvars

clusters = [
    { 
        cluster_name   = "first",
        cluster_region    = "nyc1"
        cluster_version   = "1.29.0-do.0"
        node_size         = "s-2vcpu-2gb" 
    },
    { 
        cluster_name   = "second",
        cluster_region    = "nyc1"
        cluster_version   = "1.29.0-do.0"
        node_size         = "s-2vcpu-2gb" 
    } 
]

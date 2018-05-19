storage "file" {
  path = "data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
}

default_lease_ttl="24h"

max_lease_ttl="720h"

cluster_name = "orchestructure"

ui = true
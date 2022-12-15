terraform {
    required_version = ">= 1.3, < 2.0.0"
    required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
      }
    }
}

resource "digitalocean_vpc" "vpc" {
  name     = "example-project-network"
  region   = "nyc3"
  ip_range = "10.10.10.0/24"
}
terraform {
    required_version = ">= 1.3, < 2.0.0"
    required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
      }
    }
}

resource "digitalocean_vpc" "vpc" {
  name     = var.name
  region   = var.region
  ip_range = var.ip_range
}
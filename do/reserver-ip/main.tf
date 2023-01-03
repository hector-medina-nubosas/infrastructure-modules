terraform {
    required_version = ">= 1.3"
    required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
      }
    }
}

resource "digitalocean_reserved_ip" "public_ip" {
  region = var.region
}
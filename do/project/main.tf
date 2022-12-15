terraform {
    required_version = ">= 1.3, < 2.0.0"
    required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
      }
    }
}

resource "digitalocean_project" "project" {
    name = var.name
    description = var.description
    purpose = var.purpose
    environment = var.environment
    is_default = var.is_default
}
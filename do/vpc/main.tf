terraform {
    required_version = ">= 1.3, < 2.0.0"
    required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
      }
    }
}

provider "digitalocean" {
    token = "${var.do_token}"
}

resource "digitalocean_vpc" "vpc" {
  name     = var.name
  region   = var.region
  ip_range = var.ip_range
}

resource "digitalocean_project_resources" "project_vpc" {
  project = var.project_id
  resources = [
    digitalocean_vpc.vpc.urn
  ]
}
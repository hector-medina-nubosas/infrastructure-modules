terraform {
    required_version = ">= 1.3, < 2.0.0"
    required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
      }
    }
}

resource "digitalocean_droplet" "server_leader_client" {
    image = var.image
    name = var.name
    region = var.region
    size = var.size
    ssh_keys = var.ssh_keys_fingerprint
    user_data = "${file("${path.module}/init.sh")}"
}

resource "digitalocean_project_resources" "project-resources" {
  project = var.project_id
  resources = [
    digitalocean_droplet.server_leader_client.urn
  ]
}
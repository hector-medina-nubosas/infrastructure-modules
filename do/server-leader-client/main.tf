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

server_join_json = jsonencode({
  server_join = {
    value = var.server_join
  }
})

resource "digitalocean_droplet" "server_leader_client" {
    image = var.image
    name = var.name
    region = var.region
    size = var.size
    ssh_keys = var.ssh_keys_fingerprints
    user_data = "${templatefile("${path.module}/init.sh", {
      server_role = var.server_role,
      # server_join = "[ ${join(", ", [for ip in var.server_join : format("%q", ip)])} ]" 
      server_join = server_join_json
    })}"
    vpc_uuid = var.vpc_id
}

resource "digitalocean_project_resources" "project-resources" {
  project = var.project_id
  resources = [
    digitalocean_droplet.server_leader_client.urn
  ]
}
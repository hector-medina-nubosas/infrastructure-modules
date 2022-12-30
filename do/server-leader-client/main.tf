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

locals {
  server_join = "${var.server_join == null ? null : jsonencode({server_join = {value = var.server_join}})}"
}

resource "random_id" "server" {
  byte_length = 8
}

resource "digitalocean_droplet" "server_leader_client" {

    count = var.num_instances

    image = var.image
    name = format("%s-%s", var.name, "${random_id.server.hex}")
    region = var.region
    size = var.size
    ssh_keys = var.ssh_keys_fingerprints
    user_data = "${templatefile("${path.module}/init.sh", {
      server_role = var.server_role,
      server_join = local.server_join
    })}"
    vpc_uuid = var.vpc_id
}

resource "digitalocean_project_resources" "project-resources" {
  project = var.project_id
  resources = [
    digitalocean_droplet.server_leader_client[*].urn
  ]
}
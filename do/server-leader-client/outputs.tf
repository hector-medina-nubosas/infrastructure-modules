output "urn" {
  value = digitalocean_droplet.server_leader_client.urn[*]
}

output "ip" {
  value = digitalocean_droplet.server_leader_client.ipv4_address[*]
}

output "ip_private" {
  value = digitalocean_droplet.server_leader_client.ipv4_address_private[*]
}
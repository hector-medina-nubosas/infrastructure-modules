output "urn" {
  value = digitalocean_droplet.server_leader_client.urn[count.index]
}

output "ip" {
  value = digitalocean_droplet.server_leader_client.ipv4_address[count.index]
}

output "ip_private" {
  value = digitalocean_droplet.server_leader_client.ipv4_address_private[count.index]
}
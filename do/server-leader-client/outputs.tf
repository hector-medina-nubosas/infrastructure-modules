output "urn" {
  value = digitalocean_droplet.server_leader_client[count.index].urn
}

output "ip" {
  value = digitalocean_droplet.server_leader_client[count.index].ipv4_address
}

output "ip_private" {
  value = digitalocean_droplet.server_leader_client[count.index].ipv4_address_private
}
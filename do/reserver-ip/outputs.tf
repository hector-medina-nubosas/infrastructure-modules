output "ip_address" {
  description = "IP address of the reserved IP."
  value = digitalocean_floating_ip.public_ip.ip_address
}
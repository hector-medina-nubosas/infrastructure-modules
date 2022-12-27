variable "image" {
  description = "Image droplet"
  type = string
}

variable "name" {
    description = "Name of the server."
    type = string
}

variable "region" {
    description = "Region of the server."
    type = string
}

variable "size" {
    description = "Size of the image."
    type = string
}

variable "ssh_keys_fingerprints" {
    description = "Array of SSH public key to allow remote connections."
    type = list(string)
}

variable "project_id" {
    description = "Project ID to attach the server to."
    type = string
}

variable "vpc_id" {
    description = "VPC id to attach the server to."
    type = string
}

variable "server_role" {
    description = "Server nomad role. Values: [ server-client, server, client ]"
    type = string
}

variable "do_token" {}
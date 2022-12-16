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

variable "ssh_keys_fingerprint" {
    description = "Array of SSH public key to allow remote connections."
}

variable "project_id" {
    description = "Project ID to attach the server to."
    type = string
}

variable "vpc_id" {
    description = "VPC id to attach the server to."
    type = string
}

variable "do_token" {}
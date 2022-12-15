variable "name" {
    description = "Name of the VPC."
    type = string
}

variable "region" {
    description = "Region of the VPC."
    type = string
}

variable "ip_range" {
    description = "IP range of the VPC."
    type = string
}

variable "project_id" {
    description = "Project id attached to the VPC."
    type = string
}
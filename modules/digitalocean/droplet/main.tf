terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet
resource "digitalocean_droplet" "droplet" {
  image    = var.image
  name     = var.name
  size     = var.size
  region   = var.region
  vpc_uuid = var.vpc_uuid
}

variable "image" {
  description = "The image to use for the droplet"
  default     = "ubuntu-22-04-x64"
}

variable "name" {
  description = "The name of the droplet"
  default     = "terraform-droplet"
}

variable "size" {
  description = "The size of the droplet"
  default     = "s-1vcpu-1gb"
}

variable "region" {
  description = "The region of the droplet"
  default     = "fra1"
}

variable "vpc_uuid" {
  description = "The VPC UUID"
}

output "ip" {
  value = digitalocean_droplet.droplet.ipv4_address
}

output "urn" {
  value = digitalocean_droplet.droplet.urn
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_vpc" "vpc" {
  name = var.name
  region = var.region
  ip_range =  "10.10.10.0/24"
}

variable "name" {
  type = string
  default = "example_vpc"
}

variable "region" {
  type = string
  default = "fra1"
}

output "id" {
  value = digitalocean_vpc.vpc.id
}

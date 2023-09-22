terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_project" "coinup" {
  name        = var.name
  description = var.description
  purpose     = var.purpose
  environment = var.environment
  is_default = false
  resources = var.resources
}

variable "name" {}
variable "description" {}
variable "purpose" {}
variable "environment" {}

variable "resources" {
  type  = list(string)
  description = "Resources to be created in the project"
}


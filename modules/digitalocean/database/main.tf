# TODO:
# Create the database
# Assign to the project
# Add the droplet as trusted sources
# Add in the VPC
# Create a user and database
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}


terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.25.0-alpha"
    }
  }
}

provider "github" {
  # Configuration options
  token = var.token
}


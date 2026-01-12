terraform {
  required_version = ">=1.5"
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.9.1"
    }
  }
}

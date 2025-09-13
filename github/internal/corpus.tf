terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "integrations/github"
      version = "= 6.6.0"
    }
  }
}

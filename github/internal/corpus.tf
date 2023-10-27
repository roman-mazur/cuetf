terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "integrations/github"
      version = "= 5.40.0"
    }
  }
}

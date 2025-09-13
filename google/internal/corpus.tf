terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "hashicorp/google"
      version = "= 7.2.0"
    }
  }
}

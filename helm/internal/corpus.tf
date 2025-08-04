terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "hashicorp/helm"
      version = "= 3.0.2"
    }
  }
}

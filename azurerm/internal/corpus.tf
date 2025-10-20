terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
}

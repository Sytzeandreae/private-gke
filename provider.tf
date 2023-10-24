terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.8.0"
    }
  }
}

provider "google" {
  credentials = "./gcp.json"
}
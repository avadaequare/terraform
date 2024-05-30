terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}


provider "google" {
  credentials ="./keys.json"
  project = "achyut-21"
  region = "us-cental1"
}

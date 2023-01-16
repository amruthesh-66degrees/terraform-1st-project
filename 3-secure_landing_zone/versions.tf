/* 
Owner: 66degrees
Author: Bishwajeet Biswas and Arun Kumar
Version: 0.0.1
*/


terraform {
  backend "gcs" {
    bucket = "bkt-b-tfstate-e842"
    prefix = "66slz/secure-landing-zone/66slz"
  }
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
  }
}

provider "google" {
}

provider "google-beta" {
}

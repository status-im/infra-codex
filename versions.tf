terraform {
  required_version = "> 1.4.0"
  required_providers {
    pass = {
      source  = "camptocamp/pass"
      version = " = 2.0.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    alicloud = {
      source = "aliyun/alicloud"
    }
    google = {
      source = "hashicorp/google"
    }
  }
}

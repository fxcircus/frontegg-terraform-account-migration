terraform {
  required_version = ">= 1.0.3"
  required_providers {
    frontegg = {
      source  = "frontegg/frontegg"
      version = "~> 2.0"
    }
  }
}

provider "frontegg" {
  client_id  = var.frontegg_client_id
  secret_key = var.frontegg_secret_key

  # Optional: Specify environment ID for environment-specific configuration
  environment_id = var.frontegg_environment_id != "" ? var.frontegg_environment_id : null

  # API URLs based on region
  api_base_url = lookup({
    "EU" = "https://api.frontegg.com"
    "US" = "https://api.us.frontegg.com"
    "UK" = "https://api.uk.frontegg.com"
    "CA" = "https://api.ca.frontegg.com"
    "AU" = "https://api.au.frontegg.com"
  }, var.frontegg_region, "https://api.frontegg.com")
  
  portal_base_url = lookup({
    "EU" = "https://portal.frontegg.com"
    "US" = "https://portal.us.frontegg.com"
    "UK" = "https://portal.uk.frontegg.com"
    "CA" = "https://portal.ca.frontegg.com"
    "AU" = "https://portal.au.frontegg.com"
  }, var.frontegg_region, "https://portal.frontegg.com")
}

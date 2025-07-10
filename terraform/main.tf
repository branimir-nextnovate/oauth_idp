locals {
  required_apis = [
    "iap.googleapis.com",
    "identitytoolkit.googleapis.com",
    "serviceusage.googleapis.com"
  ]
}

# Enable each required API service
resource "google_project_service" "api_services" {
  for_each = toset(local.required_apis)

  project            = var.project_id
  service            = each.value
  disable_on_destroy = false # Recommended: Keep APIs enabled even if Terraform resource is destroyed.
}

# As of current Terraform provider versions, directly configuring OAuth scopes
# within the google_iap_brand resource is not supported.
# You still need to configure scopes and add test users through
# the Google Cloud Console's "OAuth consent screen" page (APIs & Services > OAuth consent screen).
# This is a known limitation and a frequently requested feature in the Terraform provider.
resource "google_iap_brand" "brand" {
  project           = var.project_id
  support_email     = var.support_email
  application_title = var.brand_application_title

  depends_on = [
    google_project_service.api_services
  ]
}

resource "google_iap_client" "client" {
  brand        = google_iap_brand.brand.name
  display_name = var.client_application_name
}

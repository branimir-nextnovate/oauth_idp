# 1. Enable the Identity Toolkit API.
resource "google_project_service" "auth" {
  project  = var.project_id
  service =  "identitytoolkit.googleapis.com"

  disable_on_destroy = false
}

# 2. Create an Identity Platform config.
resource "google_identity_platform_config" "auth" {
  project  = var.project_id

  # Configure to auto-delete anonymous users.
  autodelete_anonymous_users = true

  authorized_domains = var.authorized_domains

  # Wait for identitytoolkit.googleapis.com to be enabled before initializing Authentication.
  depends_on = [
    google_project_service.auth,
  ]
}

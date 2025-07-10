resource "google_identity_platform_oauth_idp_config" "oidc_idp" {
  name         = "oidc.${var.name}"
  display_name = var.display_name
  enabled      = true
  issuer       = var.issuer
  client_id    = var.client_id
  client_secret = var.client_secret

  response_type {
    id_token = true
    code = false
  }
}

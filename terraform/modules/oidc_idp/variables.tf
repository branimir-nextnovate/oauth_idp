variable "name" {
  type = string
  description = "Unique name for the OIDC Config"
}

variable "display_name" {
  type = string
  description = "Display name of the OIDC Config"
}

variable "issuer" {
  type = string
  description = "Your OIDC IdP's issuer URL. E.g. https://my-custom-idp.com/.well-known/openid-configuration"
}

variable "client_id" {
  type = string
  description = "The client id of an OAuth client"
}

variable "client_secret" {
  type = string
  description = "The client secret of the OAuth client, to enable OIDC code flow"
  sensitive = true
}

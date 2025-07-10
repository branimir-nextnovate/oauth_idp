variable "project_id" {
  type        = string
  description = "Destination project id where the IDP should be configured."
}

variable "authorized_domains" {
  type    = list(string)
  default     = []
  description = "Authorized domains for the IDP authentication."
}

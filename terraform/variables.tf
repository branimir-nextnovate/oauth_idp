variable "project_id" {
  type        = string
  description = "Project id"
}

variable "region" {
  type        = string
  description = "Region of the project"
  default     = "europe-west4"
}

variable "support_email" {
  type        = string
  description = "This must be an actual email address (user or Google Group alias) that you have ownership of. Service account emails are generally not valid here unless the service account is an owner of a Google Group that is used as the support email."
}

variable "brand_application_title" {
  type        = string
  description = "Title of the brand application (Oauth screen)"
}

variable "client_application_name" {
  type        = string
  description = "Client application name"
}

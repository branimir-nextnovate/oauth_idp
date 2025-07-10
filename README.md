# GCP OAuth configuration

> [!WARNING]
> After July 2025, the google_iap_brand Terraform resource will no longer function as intended due to the deprecation of the IAP OAuth Admin API

> [!WARNING]
> Only "Organization Internal" brands can be created programmatically via API. To convert it into an external brands please use the GCP Console.

## Requirements
- [gcloud]("https://cloud.google.com/sdk/docs/install")
- [Terraform]("https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli")

## Contains
- Oauth consent screen
- Terraform modules
  - IDP basic
  - IDP OIDC
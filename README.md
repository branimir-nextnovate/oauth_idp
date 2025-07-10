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

## Limitations
- It is only possible to create `internal` brands with Terraform.
  - Steps to make the brand `external`
    1. Navigate to [audience]("https://console.cloud.google.com/auth/audience")
    2. Make sure you have selected the correct project
    3. Click on `Make external`
    4. You will be prompted to choose whether your project is in a `Testing phase` or `Ready for production` Select the appropriate option based on your project's current status.
    5. Confirm your choice by clicking `Confirm`
- Client secrets cannot be viewed in the console if they are created with Terraform or the API. So it's important to save the client_secret when creating it initially.
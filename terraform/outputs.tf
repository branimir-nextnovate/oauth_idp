output "brand_name" {
  value = google_iap_brand.brand.name
}

output "client_id" {
  value     = google_iap_client.client.client_id
  sensitive = false
}

output "client_secret" {
  value     = google_iap_client.client.secret
  sensitive = true
}

# Google Cloud provider

provider "google" {
  credentials = file(var.gcp_svc_key)
  proyect = var.gcp_proyect
  region = var.gcp_region
}
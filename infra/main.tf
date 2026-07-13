# Website storage
resource "google_storage_bucket" "website" {
  name = "terraform-example-utn"
  location = "US"
}

#Public Objects
resource "google_storage_object_access_control" "public_rule" {
  object = google_storage_bucket_object.static_site_src.name
  bucket = google_storage_bucket.website.name
  role = "READER"
  entity = "allUsers"
}




# html upload
resource "google_storage_bucket_object" "static_site_src" {
  name = "index.html"
  source = "../website/index"
  bucket = google_storage_bucket.website.name
}


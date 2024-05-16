// Create service acc
resource "yandex_iam_service_account" "sa" {
  name = "storage"
}

// Add role
resource "yandex_resourcemanager_folder_iam_member" "sa-editor" {
  folder_id = var.folder_id
  role      = "storage.editor"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}

// Create access key
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.sa.id
  description        = "static access key for object storage"
}

// Create S3
resource "yandex_storage_bucket" "picjlljully160524" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = "picjlljully160524"
  max_size   = 1048576
    anonymous_access_flags {
    read        = true
  }
}

// Image upload
resource "yandex_storage_object" "some_pic" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = "picjlljully160524"
  key        = "some_pic.jpeg"
  source     = "/Users/jullmaksimova/clopro/git/files/some_pic.jpeg"
}


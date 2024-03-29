# Создание в ЯО S3 bucket
resource "yandex_storage_bucket" "netology-diplom-bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  depends_on = [yandex_iam_service_account_static_access_key.sa-static-key]
  bucket     = "netology-diplom-bucket"
  acl        = "bucket-owner-full-control"
}
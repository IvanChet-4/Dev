resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = var.service_account_id
}

resource "yandex_storage_bucket" "bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = "${var.student_name}-${var.date}"
  acl    = "${var.my_acl}"
}

resource "yandex_storage_object" "image" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket  = yandex_storage_bucket.bucket.bucket
  key     = "${var.img_name}"
  source  = "~/8-2/${var.img_name}"
  acl     = "${var.my_acl}"
}

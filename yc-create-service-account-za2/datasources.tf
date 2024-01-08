data "yandex_iam_service_account" "yc-service-account" {
  for_each = var.name_service_account

  name       = each.value 
  depends_on = [yandex_iam_service_account.this]
}

# Создание сервисного аккаунта #################
resource "yandex_iam_service_account" "this" {
  for_each = var.name_service_account

  name        = each.value
  description = "Service account: '${each.value}'"
}

# Присвоение роли на 'Folder' сервисному аккаунту #############
resource "yandex_resourcemanager_folder_iam_member" "this" {
  for_each = var.name_service_account

  folder_id = var.folder
  role      = var.service_account_role
  member    = "serviceAccount:${data.yandex_iam_service_account.yc-service-account[each.value].id}"
}

# Генерация статических ключей сервисного аккаунта ############
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  for_each = var.name_service_account

  service_account_id = data.yandex_iam_service_account.yc-service-account[each.value].id
  description        = "Static access key for '${each.value}'"
}

# Result to local file #################
resource "local_file" "private-key" {
  for_each = var.name_service_account

  content = join("\n", [each.value, "----------",
    yandex_iam_service_account_static_access_key.sa-static-key[each.value].access_key,
  yandex_iam_service_account_static_access_key.sa-static-key[each.value].secret_key, "--------"])
  filename = "${each.value}_key.txt"

  depends_on = [yandex_iam_service_account_static_access_key.sa-static-key]
}


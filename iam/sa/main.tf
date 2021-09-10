resource "google_service_account" "default" {
  account_id   = var.name
  display_name = var.name
}

resource "google_project_iam_member" "roles" {
  for_each = toset(var.roles)
  role     = each.value
  member   = "serviceAccount:${google_service_account.default.email}"
}


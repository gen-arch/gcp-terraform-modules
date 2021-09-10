resource "google_compute_network" "default" {
  name                    = var.name
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "default" {
  for_each = var.subnets

  name                     = each.key
  ip_cidr_range            = each.value.cidr
  network                  = google_compute_network.default.self_link
  region                   = each.value.region
  private_ip_google_access = true
}

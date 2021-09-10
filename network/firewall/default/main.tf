resource "google_compute_firewall" "icmp" {
  name          = "${var.network.name}-allow-from-icmp"
  network       = var.network.self_link
  priority      = 65534
  source_ranges = var.source_ranges

  allow {
    protocol = "icmp"
  }
}

resource "google_compute_firewall" "iap" {
  name          = "${var.network.name}-allow-from-iap"
  network       = var.network.self_link
  priority      = 65535
  source_ranges = ["35.235.240.0/20"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
    }
  }

  network_interface {
    subnetwork = var.subnet
    network_ip = var.ip
    #access_config {
    #  nat_ip = var.nat_ip
    #}
  }
  tags = var.tags

  service_account {
    email  = var.service_account
    scopes = ["cloud-platform"]
  }
  metadata = {
    user-data       = var.cloud_init
    startup-script  = var.startup_script
    enable-osconfig = "true"
  }

  labels                    = var.labels
  allow_stopping_for_update = var.allow_stopping_for_update
  can_ip_forward            = var.can_ip_forward
}

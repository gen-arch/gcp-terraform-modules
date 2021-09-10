variable "name" {
  type = string
}

variable "roles" {
  type = list(string)
  default = [
    "roles/monitoring.metricWriter",
    "roles/logging.logWriter",
  ]
}

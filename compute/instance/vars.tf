variable "machine_type" {
  default = "e2-small"
}
variable "image" {
  default = "ubuntu-minimal-2004-focal-v20210910"
}

variable "name" {}
variable "subnet" {}
variable "ip" {
  type    = string
  default = ""
}

variable "nat_ip" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = "asia-northeast1"
}

variable "zone" {
  type    = string
  default = "asia-northeast1-a"
}

variable "disk_size" {
  type    = string
  default = 10
}
variable "startup_script" {
  type    = string
  default = ""
}
variable "cloud-init" {
  type    = string
  default = ""
}

variable "labels" {
  type    = map(any)
  default = {}
}

variable "can_ip_forward" {
  type    = bool
  default = false
}

variable "allow_stopping_for_update" {
  type    = bool
  default = true
}


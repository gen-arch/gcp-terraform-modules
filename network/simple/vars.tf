variable "name" {}
variable "subnets" {
  type = map(any)
  default = {
    "default" : {
      region : "asia-northeast1"
      cidr : "172.16.0.0/16"
    }
  }
}

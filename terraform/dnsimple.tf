variable "dnsimple_email" {}
variable "dnsimple_token" {}

provider "dnsimple" {
  email = "${var.dnsimple_email}"
  token = "${var.dnsimple_token}"
}

module "dnsimple" {
    source = "./dnsimple"
}

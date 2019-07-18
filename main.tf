variable "tagName" { }
variable "accessToken" { }

provider "digitalocean" {
  token = "${trimspace(chomp(var.accessToken))}"
}

resource "digitalocean_tag" "instance" {
  name = "${var.tagName}"
}

output "props" {
  value = "${digitalocean_tag.instance.name}"
}

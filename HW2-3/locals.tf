locals {
  metadata = {
    user-data = "${file(var.ssh_key)}"
  }
}

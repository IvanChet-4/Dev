output "instances_info" {
  value = [
    {
      instance_name = yandex_compute_instance.web.name
      external_ip   = yandex_compute_instance.web.network_interface[0].ipv4_address
      fqdn          = "${yandex_compute_instance.web.name}.${var.dns_zone}"
    },
    {
      instance_name = yandex_compute_instance.db.name
      external_ip   = yandex_compute_instance.db.network_interface[0].ipv4_address
      fqdn          = "${yandex_compute_instance.db.name}.${var.dns_zone}"
    }
  ]
   description = "Instances info"
}

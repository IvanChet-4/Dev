resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_network" "db" {
  name = var.vpc_db
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}
resource "yandex_vpc_subnet" "db" {
  name           = var.vpc_db
  zone           = var.b_zone
  network_id     = yandex_vpc_network.db.id
  v4_cidr_blocks = var.db_cidr
}
data "yandex_compute_image" "ubuntu" {
   family = "${var.vm_web_image}"
}
resource "yandex_compute_instance" "platform" {
  name        = local.vm_web_name_full
  platform_id = "${var.vm_web_platform_id}"
  resources {
    cores         = 1
    memory        = 1
    core_fraction = 5
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "${var.vm_web_user}:${var.ssh_key}"
  }
   allow_stopping_for_update = true
}

resource "yandex_compute_instance" "db" {
  name        = local.vm_db_name_full
  platform_id = "${var.vm_db_platform_id}"
  resources {
    cores         = var.vms_resources["db"].cores
    memory        = var.vms_resources["db"].memory
    core_fraction = var.vms_resources["db"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.db.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "${var.vm_web_user}:${var.ssh_key}"
  }
  allow_stopping_for_update = true
  zone = var.b_zone
}

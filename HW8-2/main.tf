resource "yandex_vpc_network" "network" {
  name = var.network_name
}

resource "yandex_vpc_subnet" "subnet" {
  name           = var.subnet_name
  network_id     = yandex_vpc_network.network.id
  zone           = var.my_zone
  v4_cidr_blocks = var.subnet_cidr
}

resource "yandex_compute_instance_group" "lamp_group" {
  name               = var.instance_group_name
  folder_id          = var.folder_id
  service_account_id = var.service_account_id

  instance_template {
    platform_id = var.platform_id
    resources {
      cores  = var.instance_cores
      memory = var.instance_memory
    }

    boot_disk {
      initialize_params {
        image_id = var.image_id
      }
    }

    network_interface {
      subnet_ids = [yandex_vpc_subnet.subnet.id]
      nat        = var.enable_nat
    }

    metadata = {
      user-data = templatefile(var.cloud_config_path, {
        student_name   = var.student_name
        date           = var.date
        img_name       = var.img_name
        ssh_user       = var.ssh_user
        ssh_public_key = file(var.ssh_public_key)

        
      })
    }
  }

  scale_policy {
    fixed_scale {
      size = var.instance_count
    }
  }

  deploy_policy {
    max_unavailable = var.deploy_max_unavailable
    max_creating    = var.deploy_max_creating
    max_expansion   = var.deploy_max_expansion
    max_deleting    = var.deploy_max_deleting
  }

  allocation_policy {
    zones = [var.my_zone]
  }

  health_check {
    http_options {
      port = var.health_check_port
      path = var.health_check_path
    }
    interval            = var.health_check_interval
    timeout             = var.health_check_timeout
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
  }
}


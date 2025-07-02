resource "yandex_lb_target_group" "lamp_target_group" {
  name = var.target_group_name

  dynamic "target" {
    for_each = yandex_compute_instance_group.lamp_group.instances
    content {
      address   = target.value.network_interface[0].ip_address
      subnet_id = var.subnet_id
    }
  }
}

resource "yandex_lb_network_load_balancer" "lb" {
  name = var.load_balancer_name

  listener {
    name        = var.listener_name
    port        = var.listener_port
    target_port = var.listener_target_port
    protocol    = var.listener_protocol
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.lamp_target_group.id

    healthcheck {
      name = var.healthcheck_name
      http_options {
        port = var.healthcheck_port
        path = var.healthcheck_path
      }
    }
  }
}

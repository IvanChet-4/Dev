vms_resources = {
  web = {
    cores         = 2
    memory        = 1
    core_fraction = 5
  },
  db = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
}

ssh_key = "serial-port-enable=1,ssh-keys=ed25519 $PUBLIC_KEY"

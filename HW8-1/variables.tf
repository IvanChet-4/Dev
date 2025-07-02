variable "folder_id" {
  type = string
  default = ""
}

variable "cloud_id" {
  type = string
  default = ""
}

variable "yandex_token" {
  type = string
  default = ""
}

variable "ssh_public_key" {
  default = "~/.ssh/id_ed25519.pub"
}

variable "ssh_user" {
  default = "user7"
}

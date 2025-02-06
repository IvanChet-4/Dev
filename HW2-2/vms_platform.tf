### VM vars for platform instance

variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the Yandex Compute image"
}

variable "vm_web_user" {
  type        = string
  default     = "ubuntu"
  description = "user"
}


variable "vm_web_name" {
  type        = string
  description = "Name vm"
  default     = "netology-develop-platform-web"
}


variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID for Yandex Compute instance"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Number of cores for the Yandex Compute instance"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Amount of memory (in GB) for the Yandex Compute instance"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "Core fraction for the Yandex Compute instance"
}



### db VM vars for database instance

variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the Yandex Compute image for DB"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the Yandex Compute instance for DB"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Platform ID for Yandex Compute instance for DB"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Number of cores for the Yandex Compute instance for DB"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Amount of memory (in GB) for the Yandex Compute instance for DB"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Core fraction for the Yandex Compute instance for DB"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
}

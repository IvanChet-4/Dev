### VM vars for platform instance

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the Yandex Compute image"
}

variable "vm_web_instance_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of the Yandex Compute instance"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v4"
  description = "Platform ID for Yandex Compute instance"
}

variable "vm_web_cores" {
  type        = number
  default     = 1
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

variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the Yandex Compute image for DB"
}

variable "vm_db_instance_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the Yandex Compute instance for DB"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v4"
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

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Zone for Yandex Compute instance for DB"
}

variable "folder_id" {
  default = ""
}

variable "cloud_id" {
  default = ""
}

variable "yandex_token" {
  default = ""
}

variable "service_account_id" {
  default     = ""
}

variable "student_name" {
  default     = "chetv-iv"
}

variable "date" {
  default     = "2025-06-29"
}

variable "img_name" {
  default     = "images3242.png"
}

variable "my_acl" {
  default     = "public-read"
}

variable "my_zone" {
  default     = "ru-central1-a"
}

variable "kms_key_name" {
  description = "Name of the KMS symmetric key"
  type        = string
  default     = "example-symmetric-key"
}

variable "kms_key_description" {
  description = "Description of the KMS symmetric key"
  type        = string
  default     = "description for key"
}

variable "kms_algorithm" {
  description = "Default encryption algorithm for KMS key"
  type        = string
  default     = "AES_256"
}

variable "kms_rotation_period" {
  description = "Rotation period for KMS key"
  type        = string
  default     = "8760h"
}

variable "static_key_description" {
  description = "Description for the static access key"
  type        = string
  default     = "static access key for object storage"
}

variable "bucket_max_size" {
  description = "Maximum size of the storage bucket in bytes"
  type        = number
  default     = 1000000
}

variable "sse_algorithm" {
  description = "Server-side encryption algorithm"
  type        = string
  default     = "aws:kms"
}

variable "object_content_type" {
  description = "Content type of the storage object"
  type        = string
  default     = "image/png"
}

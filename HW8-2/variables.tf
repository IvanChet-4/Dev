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

variable "ssh_public_key" {
  default = "~/.ssh/id_ed25519.pub"
}

variable "ssh_user" {
  default = "user7"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = list(string)
  default     = ["192.168.10.0/24"]
}

variable "instance_group_name" {
  description = "Name of the instance group"
  type        = string
  default     = "lamp-instance-group"
}

variable "platform_id" {
  description = "Platform ID for instances"
  type        = string
  default     = "standard-v1"
}

variable "instance_cores" {
  description = "Number of CPU cores per instance"
  type        = number
  default     = 2
}

variable "instance_memory" {
  description = "Memory in GB per instance"
  type        = number
  default     = 2
}

variable "image_id" {
  description = "ID of the image for instances"
  type        = string
  default     = "fd827b91d99psvq5fjit"
}

variable "enable_nat" {
  description = "Enable NAT for instances"
  type        = bool
  default     = true
}

# Scaling policy
variable "instance_count" {
  description = "Number of instances in the group"
  type        = number
  default     = 3
}

# Deployment policy
variable "deploy_max_unavailable" {
  description = "Maximum number of unavailable instances during deployment"
  type        = number
  default     = 1
}

variable "deploy_max_creating" {
  description = "Maximum number of instances that can be created at once"
  type        = number
  default     = 1
}

variable "deploy_max_expansion" {
  description = "Maximum number of instances for expansion"
  type        = number
  default     = 1
}

variable "deploy_max_deleting" {
  description = "Maximum number of instances that can be deleted at once"
  type        = number
  default     = 1
}

# Health check
variable "health_check_port" {
  description = "Port for HTTP health check"
  type        = number
  default     = 80
}

variable "health_check_path" {
  description = "Path for HTTP health check"
  type        = string
  default     = "/"
}

variable "health_check_interval" {
  description = "Interval between health checks in seconds"
  type        = number
  default     = 5
}

variable "health_check_timeout" {
  description = "Timeout for health checks in seconds"
  type        = number
  default     = 3
}

variable "health_check_healthy_threshold" {
  description = "Number of successful checks to consider instance healthy"
  type        = number
  default     = 2
}

variable "health_check_unhealthy_threshold" {
  description = "Number of failed checks to consider instance unhealthy"
  type        = number
  default     = 2
}

# Network variables
variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "lamp-network"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "lamp-subnet"
}

variable "cloud_config_path" {
  description = "Path to the cloud-config.yaml file"
  type        = string
  default     = "cloud-config.yaml"
}

# Load Balancer Variables
variable "target_group_name" {
  description = "Name of the load balancer target group"
  type        = string
  default     = "lamp-target-group"
}

variable "load_balancer_name" {
  description = "Name of the network load balancer"
  type        = string
  default     = "lamp-load-balancer"
}

variable "listener_name" {
  description = "Name of the load balancer listener"
  type        = string
  default     = "listener-http"
}

variable "listener_port" {
  description = "Port for the load balancer listener"
  type        = number
  default     = 80
}

variable "listener_target_port" {
  description = "Target port for the load balancer listener"
  type        = number
  default     = 80
}

variable "listener_protocol" {
  description = "Protocol for the load balancer listener"
  type        = string
  default     = "tcp"
}

variable "healthcheck_name" {
  description = "Name of the health check"
  type        = string
  default     = "http-check"
}

variable "healthcheck_port" {
  description = "Port for the health check"
  type        = number
  default     = 80
}

variable "healthcheck_path" {
  description = "Path for the health check"
  type        = string
  default     = "/"
}

# Existing variable for subnet_id (if not already defined)
variable "subnet_id" {
  description = "ID of the subnet for the target group"
  type        = string
  default     = ""
}

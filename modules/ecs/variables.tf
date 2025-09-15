variable "region" {
  type        = string
}

variable "instance_name" {
  type        = string
}

variable "instance_type" {
  type        = string
}

variable "image_id" {
  type        = string
}

variable "password" {
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  type        = string
}

variable "vswitch_id" {
  type        = string
}

variable "security_group_id" {
  type        = string
}

variable "internet_max_bandwidth_out" {
  type        = number
}

variable "system_disk_size" {
  type        = number
}
variable "region" {
  description = "Alibaba Cloud region jahan ECS banega."
  type        = string
}

variable "instance_name" {
  description = "Aapke ECS instance "
  type        = string
}

variable "instance_type" {
  description = "Server ka size (CPU aur RAM). "
  type        = string
}

variable "image_id" {
  description = "Operating System ki image ID ."
  type        = string
}

variable "password" {
  description = "Server mein login karne ke liye password."
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "VPC ki ID jismein server banega."
  type        = string
}

variable "vswitch_id" {
  description = "VSwitch ki ID jismein server banega."
  type        = string
}

variable "security_group_id" {
  description = "Server par lagane ke liye Security Group ki ID."
  type        = string
}

variable "internet_max_bandwidth_out" {
  description = "Public IP ke liye outgoing bandwidth (Mbps mein)."
  type        = number
}

variable "system_disk_size" {
  description = "Server ki system disk ka size (GB mein)."
  type        = number
}
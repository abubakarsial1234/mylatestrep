variable "region" {
  description = "Alibaba Cloud region jahan VPC banega."
  type        = string
}

variable "vpc_name" {
  description = "Aapke VPC ka naam."
  type        = string
}

variable "vpc_cidr" {
  description = "VPC ke liye CIDR block."
  type        = string
}

variable "vswitch_name" {
  description = "VSwitch ka naam."
  type        = string
}

variable "availability_zone" {
  description = "VSwitch ke liye availability zone."
  type        = string
}

variable "vswitch_cidr" {
  description = "VSwitch ke liye CIDR block."
  type        = string
}

variable "existing_security_group_id" {
  description = "Pehle se bane hue Security Group ki ID."
  type        = string
}
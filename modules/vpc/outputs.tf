output "vpc_id" {
  description = "Naye bane hue VPC ki ID."
  value       = alicloud_vpc.vpc.id
}

output "vswitch_id" {
  description = "Naye bane hue VSwitch ki ID."
  value       = alicloud_vswitch.vswitch.id
}

output "security_group_id" {
  description = "Istemaal kiye gaye Security Group ki ID."
  value       = var.existing_security_group_id
}
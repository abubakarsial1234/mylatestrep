output "vpc_id" {
  value       = alicloud_vpc.vpc.id
}

output "vswitch_id" {
  value       = alicloud_vswitch.vswitch.id
}

output "security_group_id" {
  value       = var.existing_security_group_id
}
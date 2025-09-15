output "instance_id" {
  value       = alicloud_instance.server.id
}

output "public_ip" {
  value       = alicloud_instance.server.public_ip
}

output "private_ip" {
  value       = alicloud_instance.server.private_ip
}
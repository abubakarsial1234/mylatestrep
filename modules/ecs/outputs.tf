output "instance_id" {
  description = "Naye bane hue ECS instance ki ID."
  value       = alicloud_instance.server.id
}

output "public_ip" {
  description = "Server ka Public IP address, RDP ke liye istemal hoga."
  value       = alicloud_instance.server.public_ip
}

output "private_ip" {
  description = "Server ka Private IP address."
  value       = alicloud_instance.server.private_ip
}
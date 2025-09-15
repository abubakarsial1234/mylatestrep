provider "alicloud" {
  region = var.region
}

resource "alicloud_instance" "server" {
  instance_name          = var.instance_name
  image_id               = var.image_id
  instance_type          = var.instance_type 
  password               = var.password
  instance_charge_type   = "PostPaid"

  vpc_id                 = var.vpc_id
  vswitch_id             = var.vswitch_id
  security_group_ids     = [var.security_group_id]
  
  internet_max_bandwidth_out = var.internet_max_bandwidth_out 
  
  system_disk_category   = "cloud_essd"
  system_disk_size       = var.system_disk_sizes

  tags = {
    CreatedBy = "Terragrunt"
    Purpose   = "Application Server"
  }
}
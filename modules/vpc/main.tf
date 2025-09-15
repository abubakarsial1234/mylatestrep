
provider "alicloud" {
  region = var.region    
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr
}


resource "alicloud_vswitch" "vswitch" {
  vpc_id       = alicloud_vpc.vpc.id
  vswitch_name = var.vswitch_name
  cidr_block   = var.vswitch_cidr
  zone_id      = var.availability_zone
}

resource "alicloud_nat_gateway" "nat" {
  vpc_id           = alicloud_vpc.vpc.id
  nat_gateway_name = "${var.vpc_name}-nat-gateway"
  payment_type     = "PayAsYouGo"
  nat_type         = "Enhanced"
  vswitch_id       = alicloud_vswitch.vswitch.id 
}

resource "alicloud_eip_address" "nat_eip" {
  address_name         = "${var.vpc_name}-nat-eip"
  payment_type         = "PayAsYouGo"
  bandwidth            = "5"
  internet_charge_type = "PayByTraffic"
}

resource "alicloud_eip_association" "nat_eip_assoc" {
  allocation_id = alicloud_eip_address.nat_eip.id
  instance_id   = alicloud_nat_gateway.nat.id
}

resource "alicloud_snat_entry" "snat" {
  snat_table_id     = alicloud_nat_gateway.nat.snat_table_ids
  source_vswitch_id = alicloud_vswitch.vswitch.id
  snat_ip           = alicloud_eip_address.nat_eip.ip_address
}


data "alicloud_security_groups" "existing_sg" {
  ids = [var.existing_security_group_id]
}
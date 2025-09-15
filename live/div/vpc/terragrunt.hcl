
terraform {
  source = "../../../modules/vpc"
}


inputs = {
  region                     = "me-central-1"
  vpc_name                   = "my-project-vpc-1"
  vpc_cidr                   = "172.16.0.0/12"
  

  vswitch_name               = "my-project-vswitch-1"
  availability_zone          = "me-central-1a"
  vswitch_cidr               = "172.27.100.0/24"


  existing_security_group_id = "sg-l4v6agp8a83vbndnb7rr"
}
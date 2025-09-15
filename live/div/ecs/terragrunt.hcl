dependency "vpc" {
  config_path = "../vpc"
}

terraform {
  source = "../../../modules/ecs"
}

inputs = {
  vpc_id            = dependency.vpc.outputs.vpc_id
  vswitch_id        = dependency.vpc.outputs.vswitch_id
  security_group_id = dependency.vpc.outputs.security_group_id

  region            = "me-central-1"
  instance_name     = "my-first-windows-server"
  password          = "YourComplexPassword@123"
  image_id          = "win2022_dtc_gen2_x64_20G_alibase_20240729.vhd"
  
  instance_type     = "ecs.g7.large" 
  internet_max_bandwidth_out = 20    
  system_disk_size = 30

}


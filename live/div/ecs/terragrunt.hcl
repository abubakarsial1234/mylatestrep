dependency "vpc" {
  config_path = "../vpc"
}

terraform {
  source = "../../../modules/ecs"
}

inputs = {
  # VPC se aane wali values
  vpc_id            = dependency.vpc.outputs.vpc_id
  vswitch_id        = dependency.vpc.outputs.vswitch_id
  security_group_id = dependency.vpc.outputs.security_group_id

  # Server ki specific values
  region            = "me-central-1"
  instance_name     = "my-first-windows-server"
  password          = "YourComplexPassword@123"
  image_id          = "win2022_dtc_gen2_x64_20G_alibase_20240729.vhd"
  
  # --- In do lines ko badal kar aap server modify kar sakte hain ---
  instance_type     = "ecs.g7.large"  # Isay "ecs.g7.xlarge" ya apni marzi ka size dein
  internet_max_bandwidth_out = 20     # Isay 50, 100, ya apni marzi ki bandwidth dein
  system_disk_size = 30

}


module "network" {
  source = "./modules/network"

  vpc_cidr         = "10.0.0.0/16"
  subnet_cidr      = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id = module.network.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  instance_type     = var.instance_type
  subnet_id         = module.network.subnet_id
  security_group_id = module.security_group.security_group_id
  key_name          = "terraform-aws-key"
}

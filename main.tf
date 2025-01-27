module "vpc" {
  source = "./vpc/"

}

module "ec2" {
  source = "./ec2/"
  sg     = module.vpc.sg_id
  subnet = module.vpc.subnet_id
}


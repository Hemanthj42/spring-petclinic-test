module "vpctest" {
  source  = "terraform-aws-modules/vpc/aws"

  name = "vpc-prod"
  cidr = "172.20.0.0/16"

  azs             = ["${var.AWS_REGION}a"]
  private_subnets = ["172.20.10.0/24"]
  public_subnets  = ["172.20.20.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Name = "mytest"
  }

  
}
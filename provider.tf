locals {
  region = "us-east-2"
  name   = "${terraform.workspace}-cluster"
  vpc_cidr = "10.123.0.0/16"
  azs      = ["us-east-2a", "us-east-2b"]
  public_subnets  = ["10.123.1.0/24", "10.123.2.0/24"]
  private_subnets = ["10.123.3.0/24", "10.123.4.0/24"]
  intra_subnets   = ["10.123.5.0/24", "10.123.6.0/24"]
  tags = {
    Example = local.name
  }
}

provider "aws" {
  region = "us-east-2"
}

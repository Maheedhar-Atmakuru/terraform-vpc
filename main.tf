module "vpc" {
  source = "./vendor/modules/vpc/"      #Terrafile clones the backend modules and keeps it local 
  VPC_CIDR = var.VPC_CIDR
  PUBLIC_SUBNET_CIDR = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
}

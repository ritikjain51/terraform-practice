terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 2.0"
    }
  }
  
}

provider aws {
    region = var.region
    profile = var.aws_profile
    access_key = var.access_key
    secret_key = var.secret_key
}

module vpc {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    ingress_port = var.ingress_port
    availability_zone1 = var.availability_zone1
    availability_zone2 = var.availability_zone2
    subnet_cidr_1=var.subnet_cidr_1
    subnet_cidr_2=var.subnet_cidr_2
}

module iam_roles{
    source = "./modules/iam_roles"
}

module redshift{
    source = "./modules/redshift"
    cluster_identifier = var.cluster_identifier
    database_name = var.database_name
    master_uname = var.master_uname
    master_pass = var.master_pass
    nodetype =var.nodetype
    cluster_type = var.cluster_type
    iam_roles_arn = [module.iam_roles.redshift_arn]
    cluster_subnet_group = module.vpc.redshift_subgroup_id
}


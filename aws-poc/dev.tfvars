# Provider details 
region = "us-east-1"
access_key = "<ACCESS_KEY>"
secret_key = "<SECRET_KEY>"
aws_profile = "default"

# VPC and Subnet
vpc_cidr = "10.0.0.0/16"
availability_zone1 = "us-east-1"
availability_zone2 = "us-west-1"
subnet_cidr_1 = "10.0.1.0/24"
subnet_cidr_2 = "10.0.2.0/24"
ingress_port=5439


# Redshift
cluster_identifier = "redshift_cluster"
database_name = "redshift"
master_uname = "root"
master_pass = "<PASSWORD>"
nodetype = "dc2.large"
cluster_type = "single-node"
variable region {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}
variable access_key {}
variable secret_key {}
variable aws_profile {}


# VPC Variables 
variable vpc_cidr {}
variable availability_zone1{}
variable availability_zone2{}
variable subnet_cidr_1{}
variable subnet_cidr_2{}
variable ingress_port {
  default = 5439
}


# Redshift Variables
variable "cluster_identifier" { }
variable "database_name" { }
variable "master_uname" { }
variable "master_pass" { }
variable "nodetype" { }
variable "cluster_type" { }


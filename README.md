# Terraform


## Terraform Introduction

- Terraform is a tool for performing system provisioning
- It uses HCL syntax (Hashicorp Configuration Language)

## HCL (Hashicorp Configuration Language)

Terraform uses HCL for performing the provisioning type.

```terraform
<block> <resource-type> <logical-name> {
    arg1 = value1
    arg2 = value2
}
```

The syntax is divided into 

block: Block name defines the type of block

Resource-Type: Resource type is the predefined names for every resource. like "local_file", where $local$ defines the provider type which is local. $file$ define the resource. 

Resource-name: It is the name of resource 

arguments: All the arguments 


For e.g.

Creating a file in local resource
```terraform
resource "local_file" "basic_file" {
    filename = "/home/basic_file.txt"
    content = "This is a basic file created by Terraform"
}
```

AWS EC2 Instance provisioning 
```terraform
resource "aws_instance" "backendserver"{
    ami = "ami-10101010"
    instance_type = "t2.micro"
}
```


AWS S3 Bucket provisioning 
```terraform
resource "aws_s3_bucket" "doc_bucket" {
    bucket = "document_bucket_for_backend"
    acl = "private"
}


## Start provisioning

1. Initiate the provisioning 
```terraform
terraform init
```

- This command check the configuration files 
- Initiate the working directory with name .terraform 
- Understand about the provider type and install essential plugins 


2. Review the plan 
```terraform
terraform plan 
```
This command will display the terraform action plan 



3. Apply the changes 
```terraform
terraform apply
```

4. To show the resources
```terraform
terraform show
```

5. To Destroy the complete provisioning 
```terraform
terraform destroy
```



## Terraform Configuration file Structure 

- main.tf 
    Main file contains resource configuration

- variables.tf
    Contains variable declarations

- outputs.tf 
    Contains Outputs from Resources

- provider.tf
    Contains Provider Definition



## Multiple provider

To illustrate this, 

lets make use of new provider "random" 

To create random details we can use random as resource type 

```terraform

resource "random_pet" "my-employee" {
    prefix = "Mr."
    seperator = "."
    length = "1"
}
```


## Defining the variables 

Variable Syntax 

```terraform
variable "<variable_name>" {
    default = "<value>"
}
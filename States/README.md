Statefile is a blueprint of all the resources need to execute. 

Each resource created in terraform does have a unique ID 

State file also track the meta data

Terraform state helps with performance as there is no reconsiliation of resources 

Statefile is sensitive, as it contains all the classified information about the infrastructure like ip details

Best Practice:
- Store statefiles in Remote Disributed Storage like AWS s3 Bucket, Terraform Cloud
- Don't manually change the state file. Also, if wanted to change anything use terraform state commands 


### Terraform State Commands 

terraform validate command - It will check the validation for all the files

terraform format command - It will reformat the code 

terraform show - It shows the current state of the resources

terraform providers - It will provide the current available provider in the configuration with their 

terraform output - It will print all the outputs 

terraform refresh - It will update all the states

terraform graph - It will help in generating the Dependency Graph of all Resources. which can be visualized by Graphviz or other library


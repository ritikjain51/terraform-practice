For the variables initializing the values

1. We can provide the default values to all the variables 
2. By inputting values in interactive mode 
    - This can be achieved by not defining the default values for the variable
3. By inputting values of variables with apply command 
    For e.g. We need the filename
    ```
        terraform apply -var "filename=<filename>"
    ```
4. Setting up the variables in Environment 
    For e.g. Setting up the filename
    ```
    export TF_VAR_FILENAME ="filename"
    ```
5. By creating a tfvars file 
    For e.g. create a "variables.tfvars" and add the variables to that file 

    then apply the workflow like
    ```
    terraform apply -var-file variables.tfvars"
    ```

    Else create file "variables.auto.tfvars", then explicit variables definition is not require. It will automatically load the variables"




## Variable Definition Precedence

In case, the same variable is defined multiple times with different methods like 
- Default Value
- Input Interactive Mode or Command Input
- Setting up environment variables
- Creating .tfvars
- Creating .auto.tfvars


The order terraform follows is (in ascending order)
- Default value 
- Environment Variables
- .tfvars variables (alphabetical order)
- .auto.tfvars variables (alphabetical order)
- Command-Line or Interactive Mode variable


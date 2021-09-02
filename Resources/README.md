Resource Attribute References

Here, we are understanding how to refer resource attributes to other resources. 

# Syntax 

For referencing the attributes syntax is 

```
${<resource-type>.<resource-logical-name>.<attribute>}
```

```
resource "random_pet" "my-pet" {
    prefix = "Mr."
}

resource "local_file" "pet-file"{
    filename = "./pet_name.txt"
    content = "My pet is ${random_pet.my-pet.id}"
}

```


# Type of Resource Dependencies

1. Implicit Dependency
    This is implicitly created by the Terraform and initialize and destroy resource in heriarical manner

2. Explicit Dependency
    Here, we can define the resource name on which the other resource is depends by defining depends_on attribute 
    

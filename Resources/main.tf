resource "random_pet" "my-pet" {
    prefix = "Mr."
}


resource "local_file" "pet-file" {
    filename = "./pet-file.txt"
    content = "My pet name is ${random_pet.my-pet.id}. This file is created at ${time_static.time_update.id}"
}

resource "time_static" "time_update"{}
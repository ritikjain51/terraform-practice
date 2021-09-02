resource "local_file" "basic_file" {
  filename = "./basic_file.txt"
  content  = "This is my first terraform file"
}

resource "random_pet" "employee" {
  prefix    = "Mr."
  separator = "."
  length    = 2
}
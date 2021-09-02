variable "filename" {
    description = "the path of local file"
    default = "./variable_file.txt"
    type = string
}


variable "content" {
  type = list(string)
  default = ["Ritik", "Jain"]
  description = "Defining the List"
}


variable "content_map" {
  type = map
  default = {
      "statement1": "This is a statement",
      "statement2": "This is 2nd statement"
  }
}


variable "employee_obj" {
    type = object(
        {
            name = string
            designation = string
            phone = number
        }
    )
    default = {
      designation = "Researcher"
      name = "Ritik"
      phone = 1
    }
}
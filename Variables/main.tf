resource "local_file" "variable_file" {
    filename = var.filename
    content = var.content[1]
}


resource "local_file" "demo-map" {
    filename = var.filename
    content = var.content_map["statement1"] 
}
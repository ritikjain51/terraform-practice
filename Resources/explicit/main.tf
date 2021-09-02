resource "local_file" "whale" {
  filename=var.whale-filename
  depends_on = [
      "local_file.krill"
  ]
}

resource "local_file" "krill" {
  filename=var.krill-filename
}


provider "aws" {
  profile    = "<profile>"
  region     = "<region>"
}

resource "aws_key_pair" "example" {
  key_name   = "<mykey>key"
  public_key = file("~/.ssh/<mykey>.pub")
}

resource "aws_instance" "example" {
  key_name      = aws_key_pair.example.key_name
  ami           = "ami-0eb89db7593b5d434"
  instance_type = "t2.micro"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/<privatekey>")
    agent       = "true"
    host        = self.public_ip
  }
  
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get -y upgrade",
      "sudo apt-get install -y fail2ban",
      "sudo apt install unattended-upgrades"
    ]
  }
}
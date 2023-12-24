resource "aws_key_pair" "doveskey" {
  key_name   = "dove-key"
  public_key = file("dove-key.pub")
}

resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.doveskey.key_name
  vpc_security_group_ids = ["sg-0989bb2a677d301cf"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {

    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file("dove-key")
    host        = self.public_ip
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
}

  resource "aws_instance" "webserver" {
    ami           = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name      = "project_key"
    security_groups = [ "website-allow" ]
    tags = {
      Name = "webserver-instance"
    }
  }

output "instance_ip" {
  value = aws_instance.webserver.public_ip
}

resource "null_resource" "nullremote1" {

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("/var/lib/jenkins/workspace/new/project_key.pem")
    host = aws_instance.webserver.public_ip
}

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y python3-pip",
      "pip3 install boto boto3",
  ]
 }
}

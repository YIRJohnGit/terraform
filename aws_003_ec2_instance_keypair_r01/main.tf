#EC2 instance details
resource "aws_instance" "instance1" {
 ami = data.aws_ami.windows.id
 #ami = "ami-026b57f3c383c2eec"
 instance_type = "t2.micro"
 security_groups = [aws_security_group.testing_sg.name]
 user_data = "${file("install.sh")}"
 tags = {
  Name = "windows_ec2"
 }
}

resource "aws_instance" "instance2" {
 ami = "ami-026b57f3c383c2eec"
 instance_type = "t2.micro"
 security_groups = [aws_security_group.testing_sg.name]
 user_data = "${file("install.sh")}"
 tags = {
  Name = "linux_ec2"
 }
}



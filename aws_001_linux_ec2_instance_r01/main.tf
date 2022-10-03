#EC2 instance details
resource "aws_instance" "instance1" {
 ami = data.aws_ami.amazon_linux.id
 #ami = "ami-026b57f3c383c2eec"
 instance_type = "t2.micro"
 security_groups = [aws_security_group.testing_sg.name]
 user_data = "${file("install.sh")}"
 tags = {
  Name = "first_linux_ec2"
 }
}

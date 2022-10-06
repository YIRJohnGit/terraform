#EC2 instance details

resource "aws_instance" "instance2" {
 #ami = data.aws_ami.amazon_linux.id
 ami = data.aws_ami.ubuntu.id
 
 #ami = "ami-08c40ec9ead489470"
 #Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2022-09-12
 
 instance_type = "t2.micro"
 security_groups = [aws_security_group.testing_sg.name]
 #key_name = "ubuntu_ec2_key"
 key_name = "deployer-key"
 
 user_data = "${file("install.sh")}"
 tags = {
  Name = "ubuntu_linux_ec2"
 }
}



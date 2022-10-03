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




# RSA Private key of size 4096 bits <.pem>
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# RSA Public Key from the above
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

# Storing private key as pem file in Locally
resource "local_file" "tf-key" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "xyz_p1_key.pem"
}


#Access & secret keys
provider "aws" {
  access_key = "ASIAXSQVKDNF6PIMDAVX"
  secret_key = "ElGXitQEuFI89ozzjBip49WrkI4EGR27ATy/yyph"
  token = "FwoGZXIvYXdzENj//////////wEaDDm0LblvTLFf/6dSpSKuAbNQJ2AVYudDC+skR8JFP+vaOYrrd8r6uDFe/1CLueaxLLR4n7Z8jXt5ENKjmpX7hHLJ8Zwhd9aG4PIMr3l1uSJnnOZDcH7Ec3e2UEUlg2MTqbhJUCIMBQlQSzXSKBc78Exqp7FbOLuO2XrE8QTc+QbwaVhInD0kgM1/2xE4J/XL1jZQrQ8sIkAsvNbkjWOVFArDbDQIFQGAIkOJLIGypHH6DJJH74cnAkQw8bLQXijYiuOZBjItoEY6YsXIOnZ/L2vExP4pDkNAARfMWHJD0jwr9+x/5F+UI7TtPTdUMVGuF5gA"
  region = "us-east-1"
}

#Security Group Setting
resource "aws_security_group" "testing_sg" {
  name        = "testing_sg"
  description = "Allow Sample"
  tags = {
    Name = "Sample SG"
  }
}

#EC2 instance details
resource "aws_instance" "instance1" {
 ami = "ami-026b57f3c383c2eec"
 instance_type = "t2.micro"
 security_groups = [aws_security_group.testing_sg.name]
 user_data = "${file("install.sh")}"
 tags = {
  Name = "first_test_ec2"
 }
}

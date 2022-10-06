#Security Group Setting
resource "aws_security_group" "testing_sg" {
  name        = "key_secu_grp_testing"
  description = "Create a Key pair for Linux Ubuntu instances and Access using SSH"

  # For Inbound
  ingress {
    description      = "TLS from VPC SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
  }

 ingress {
    description      = "TLS from VPC HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
  }
  
   ingress {
    description      = "TLS from VPC HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
  }
  
   # For Outbound
  egress {
    description      = "allow in bound to all"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  tags = {
    Name = "keypair_sg"
  }
}

#Security Group Setting
resource "aws_security_group" "testing_sg" {
  name        = "windows_secu_grp_testing"
  description = "Allow Sample"
  tags = {
    Name = "sg_windows"
  }
}

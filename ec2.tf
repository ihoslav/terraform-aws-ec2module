resource "aws_instance" "virginia-ec2" {
  ami             = var.ami
  instance_type   = var.instance-type
  subnet_id       = var.subnet-id
  security_groups = [aws_security_group.secur.id]
  key_name        = aws_key_pair.key.id
  tags = {
    Name = var.ec2-tag-name
    

  }
}


resource "aws_ebs_volume" "ebs" {
  availability_zone = var.availability-zone
  size              = var.ebs-size
  tags = {
    Name = var.ebs-tag-name
  }
}

resource "aws_volume_attachment" "ebs-att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = aws_instance.virginia-ec2.id
}






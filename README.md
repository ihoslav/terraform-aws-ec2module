# terraform-aws-ec2module
```
module "your-module-name" {
    source = "ihoslav/ec2module/aws"
    version = "specify version"

ami= "specify your ami"
instance-type = "specify your instance type"
subnet-id = "specify your subnet id"
security-group-name = "give your vpc name"
key-name = "give your key name"
vpc-id = "specify your vpc "
region = "specify your region"
availability-zone = "specify your AZ for volume"
ebs-size = "chose your volume size"
ec2-tag-name = "give your name to ec2"
ebs-tag-name = "give your volume name "
}


output "key-info" {
  value = aws_key_pair.key
}

output "sec-info" {
  value = aws_security_group.secur
}

output "ebs-info" {
  value = aws_ebs_volume.ebs
}

```

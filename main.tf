resource "aws_instance" "aws-ec2" {
  ami = ami-04c596dcf23eb98d8
  instance_type = var.instance_type
  associate_public_ip_address = var.assign_ip
  key_name = var.key_pair
  vpc_security_group_ids = var.security_groups
  subnet_id=var.subnet_id
  tags = {
    Name = var.ec2_name
  }
}

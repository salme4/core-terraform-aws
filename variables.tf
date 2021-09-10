variable "ec2_name" {
  description = "ec2 instance tag Name"
  default = "china-terraform-core-ec2"
}

variable "subnet_id" {
  description = "subnet identity"
  default = "subnet-03f7963d2c8889cd5"
}

variable "security_groups" {
  description = "security group ids"
  type = list(string)
  default = ["sg-067ee7595b22f17f8"]
}

variable "key_pair" {
  description = "pem key pair name"
  default = "devos-chaina-service"
}

variable "instance_type" {
  description = "ec2 instance type"
  default = "t2.micro"
}

variable "assign_ip" {
  description = "use assign ip"
  type = bool
  default = true
}

variable "ami_id" {
  description = "use assign ip"
  type = string
  default = "ami-050aa794c793770d8"
}
resource "aws_instance" "devops-terraform-practice-12" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_allt.name]
  tags = var.tags
}
resource "aws_security_group" "allow_allt" {
  name        = var.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    description = "allow-all"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = var.sg_cidr
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
     cidr_blocks = var.sg_cidr
    
  }
}

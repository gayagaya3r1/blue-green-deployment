module "ec2" {
    source = "../terraform-ec2-module"
    ami_id = var.ami_id
    instance_type = var.instance_type
}
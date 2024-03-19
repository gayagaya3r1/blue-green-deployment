resource "aws_instance" "conditions" {
    count = 4
    #ami = var.ami_id 
    ami = local.ami_id # using locals
    #instance_type = var.instance_name == "mongodb" ? "t3.medium" : "t2.micro"
    instance_type = local.value
    tags = {
        Name = var.instance_name[count.index]
    }
}
resource "aws_route53_record" "record" {
  count = 4
  zone_id = var.hosted_zone_id
  #name    = "${var.instance_name[count.index]}.joindevops.online" # ${} is used for to comine variables and string
  name    = "${var.instance_name[count.index]}.${var.domain}"    #if we use variables use ${}
  type    = "A"
  ttl     = 1
  records = [aws_instance.conditions[count.index].private_ip]
}
resource "aws_key_pair" "deployer" {
    key_name = "devops-terraform"
    
    #public_key = file("${path.module}/devops.terraform")

    public_key = local.key_public

}


resource "aws_instance" "filefunction" {
    # ami = var.ami_id
      ami = local.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.deployer.key_name
    
}


resource "aws_instance" "creating_ec2_instances" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    tags = {
        Name = each.key
    }

}
resource "aws_route53_record" "www" {
  for_each = aws_instance.creating_ec2_instances    # this is for iterating
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  # if web gives public_ip then it takes publicip or else it takes privateip
  records = [ each.key == "Web" ? each.value.public_ip : each.value.private_ip ]
}

    locals   {
        ami_id = "ami-0f3c7d07486cad139"
        key_public = file("${path.module}/devops.terraform")
        value = var.instance_name == "mongodb" ? "t3.medium" : "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

/* variable "tags" {
    type = map
    default = {
        Name = mongodb
        Terraform = True
    } */
    
    
variable "instance_name" {
    type = list
    default = ["mongodb", "cart", "payment", "sql"]
}

variable "hosted_zone_id" {
    default = "Z0411421PEMV4ZXG2QU8"
  
}

variable "domain" {
  default = "joindevops.online"
}

variable "domain" {
  default = "joindevops.online"
}

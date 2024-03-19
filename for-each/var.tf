variable "ami_id" {
  type = string # this is the data type
  default = "ami-03265a0778a880afb" # this is the default value
}

variable "instances" {
  type = map
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Web = "t2.micro"
  }
}

variable "zone_id" {
    default = "Z0411421PEMV4ZXG2QU8"
  
}

variable "domain" {
  default = "joindevops.online"
}

# here u declare not assigned the any values then thta time it can search in terrafom.tfvar file there also we did not give value then 
#it asking in terraform promt enter sg_name 

variable "sg_name" {
  type = string
}
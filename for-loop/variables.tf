variable "instances" {
    default = ["mongodb" , "mysql"]
    # default = {
    #     mongodb = "t3.micro"
    #     mysql = "t3.micro"
    # }
}

variable "instance_type" {
    default = {
        mongodb = "t3.micro"
        mysql   = "t3.micro"
    }
    
}
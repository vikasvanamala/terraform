resource "aws_instance" "terraform" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["saws_security_group.allow-all.id"]
    tags = {
        name = "terraform-1"
        terraform = true

    }

}

resource "aws_security_group" "allow-all" {
    name = "allow-all"

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr      = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr      = ["0.0.0.0/0"]
    }

    tags = {
        name = "allow-all"
    }
}
resource "aws_security_group" "allow_all" {
    name   = "allow-all"

    egress {
        from_port        = 0 # from port 0 to to port 0 means all ports
        to_port          = 0 
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"] # internet
    }
    #block
    dynamic "ingress" {
        for_each = toset(var.ingress_ports)
        content {
            from_port        = ingress.value 
            to_port          = ingress.value
            protocol         = "tcp" 
            cidr_blocks      = ["0.0.0.0/0"] # internet
        }
    }

  tags = {
    Name = "roboshop-sg"
  }

}
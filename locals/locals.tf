locals {
  instance_type = "t3.micro"
  common_name   = "${var.project}-${var.environment}"
  ami_id        = "ami-09c813fb71547fc4f"
  ec2_tags = merge (
    var.common_tags, 
    {
        name = "${local.common_name}-local-demo"
    }

  )

}
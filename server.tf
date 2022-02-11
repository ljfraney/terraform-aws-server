
resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  key_name = var.key_name

  user_data = templatefile("${path.module}/files/deploy_app.sh", {
    placeholder = var.placeholder
    width       = var.width
    height      = var.height
  })

  tags = {
    "Name"        = var.identity
    "Environment" = var.environment
    "createdby"   = "terraform"
  }
}


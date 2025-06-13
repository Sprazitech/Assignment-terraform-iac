resource "aws_instance" "WebInstance" {
  ami           = var.ami_id 
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.Web_sg.id]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "Test-bucket" {
  bucket = var.s3_bucket_name  # Make sure the bucket name is globally unique

  tags = {
    Name = "Terraformtestbucket"
    Environment = var.environment
      }
}


resource "aws_security_group" "Web_sg" {
  name        = "terraform_sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform_sg"
  }
}


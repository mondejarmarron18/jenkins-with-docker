provider "aws" {
  region = "sgp1"
}

resource "aws_security_group" "jenkins-app-sg" {
  name = "jenkins-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "jenkins-app" {
  ami = ""
  instance_type = "t2.micro"

  security_groups = [aws_security_group.jenkins-app-sg.name]


  key_name = "jenking-app-kp"
}
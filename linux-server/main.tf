resource "aws_instance" "linux_server" {
  ami                         = data.aws_ami.joindevops.id
  instance_type               = "t3.micro"
  subnet_id                   = "subnet-09068423ffac2f567"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]
  tags = {
    Name      = "linux_server",
    terraform = "true"
  }
}
resource "aws_security_group" "allow_all_traffic" {
  name        = "allow_all_traffic"
  description = "allow_all_trafic"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_all_traffic"
  }
}
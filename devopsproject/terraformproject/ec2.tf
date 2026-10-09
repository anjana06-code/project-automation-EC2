#user 1
resource "aws_instance" "demo_user1" {
  ami                         = "ami-01a00762f46d584a1"
  instance_type               = "t3.micro"
  key_name                    = "devops-key"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.pub-sub1.id
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids      = [aws_security_group.securitygrouptf.id]

  tags = {
    Name = "sjc-devops"
    name = "sjc-devops"
    team = "devops"
  }
}

#user 2
resource "aws_instance" "demo_user2" {
  ami                         = "ami-01a00762f46d584a1"
  instance_type               = "t3.micro"
  key_name                    = "devops-key"
  subnet_id                   = aws_subnet.pub-sub2.id
  associate_public_ip_address = true
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids = [aws_security_group.securitygrouptf.id]

  tags = {
    Name = "sjc-devops-2"
    name = "sjc-devops-2"
    team = "devops"
  }
}

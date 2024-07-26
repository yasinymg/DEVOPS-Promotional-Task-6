resource "aws_instance" "PublicInstance" {
  ami           = "ami-0932dacac40965a65"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PublicSubnet.id
  security_groups =  [aws_security_group.PublicSecurityGroup.id]

  tags = {
    Name = "PublicInstance"
  }

    user_data = <<-EOF
              #!/bin/bash
              $(filebase64("nginx.sh"))
              EOF

  
  vpc_security_group_ids =  [aws_security_group.PublicSecurityGroup.id]
}

resource "aws_instance" "PrivateInstance" {
  ami           = "ami-0932dacac40965a65"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PrivateSubnet.id
  security_groups =  [aws_security_group.PrivateSecurityGroup.id]

  tags = {
    Name = "PrivateInstance"

      user_data = <<-EOF
              #!/bin/bash
              $(filebase64("postgresql.sh"))
              EOF
  }
}
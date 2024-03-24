provider "aws" {
  region = "us-east-1"
}
 
resource "aws_instance" "RHEL-Server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.micro"
  key_name      = "VS_Keypair"
  tags = {
    Name = "RHEL-Server"
  }
  root_block_device {
    volume_size = 15 
    volume_type = "gp3"
    encrypted   = true
  }
resource "aws_instance" "Ubuntu-Linux" {
  count         = 1
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  key_name      = "Triage_KeyPair"
  tags = {
    Name = "Ubuntu-Server"
  }
} 
}

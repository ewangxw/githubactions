resource "aws_instance" "web" {
  ami           = "ami-0567f647e75c7bc05"
  instance_type = "t3.micro"

  tags = {
    Name = "NewWorld"
  }
}
resource "aws_instance" "web" {
  ami           = "ami-0567f647e75c7bc05"
  instance_type = "t3.micro"

  tags = {
    Name = "NewWorld"
  }
}

module "s3_bucket" {
  source = "../modules/terraform-aws-s3-bucket"

  bucket = "ewan0006-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = false
  }

}
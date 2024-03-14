resource "aws_instance" "jenkins" {
  security_groups = ["default"]
  ami = "ami-03bb6d83c60fc5f7c"
  key_name = "jenkins"
  instance_type = "t2.micro"
}


resource "aws_ecr_repository" "ecr" {
  name                 = "ecr"
  image_tag_mutability = "MUTABLE"

}

resource "aws_s3_bucket" "s3" {
  bucket = "jk-backend"

  
}
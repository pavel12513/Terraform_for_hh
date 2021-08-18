provider "aws" {
  access_key = "AKIA3IEYEH4IC42KMB4R"
  secret_key = "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"
  region     = "eu-north-1" # eu-central-1
}

resource "aws_instance" "my_Ubuntu" {
  count         = 1 # Количество серверов
  ami           = "ami-05f7491af5eef733a"
  instance_type = "t2.micro"
}

resource "aws_instance" "my_Amazon" {
  ami           = "ami-0453cb7b5f2b7fca2"
  instance_type = "t2.micro"

  tags = {
    Name  = "My Amazon Server"
    Owner = "Pavel"
  }
}

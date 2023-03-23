provider "aws" {
  region= "ap-south-1"
}
resource "aws_instance" "web" {
  count ="1"
  ami ="ami-0f8ca728008ff5af4"
  instance_type ="t2.micro"
  key name ="ganesh71"
  subnet_id = "subnet-03e27f96cca27f839"
  security_groups =["sg-072cdae8ac82bde0f"]
  tags = {
    Name = "HelloWorld"
    Enc  = "dev"
  }  
}

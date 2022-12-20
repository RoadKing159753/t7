resource "aws_instance" "app_server1" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}

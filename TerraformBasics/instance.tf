data "aws_availability_zones" "available" {}
resource "aws_instance" "mydemo-instance" {
  # count =3
  ami = lookup(var.ami_type,var.region)
  instance_type = lookup(var.instance-type,var.env)
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    # Name = "demoinstance-${count.index}"
    Name = var.mytag[0]
    Tool = var.mytag[1]
  }
  depends_on = [aws_s3_bucket.terraform-s3]
}

output "private-ip" {
  value = aws_instance.mydemo-instance.private_ip
}

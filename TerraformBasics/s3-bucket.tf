resource "aws_s3_bucket" "terraform-s3" {
  bucket = "terraform-s3-bucket-pallab"
  versioning {
    enabled = true
  }
  tags = {
    Name = "My bucket"
  }
}

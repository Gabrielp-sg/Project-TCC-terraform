module "aws_s3_bucket"  {
  source             = "../modules/buckets"
  bucket_name = "terra-backend-vpc-eu"
}

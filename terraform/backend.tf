terraform {
  backend "s3" {
    bucket = "rahul-deokate-terraform-state-eks"
    key = "jenkins/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "rahul-deokate-terraform-lock-eks"
    encrypt = true
  }
}


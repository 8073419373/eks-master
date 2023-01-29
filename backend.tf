terraform {
  backend "s3" {
    bucket         = "backupterraformcode"
    key            = "terraform-aws-eks-workshop.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
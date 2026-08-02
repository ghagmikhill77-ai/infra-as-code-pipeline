terraform {
  backend "s3" {
    bucket         = "infra-as-code-pipeline-tfstate-mikhil-2026"
    key            = "staging/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "infra-as-code-pipeline-terraform-locks"
    encrypt        = true
  }
}


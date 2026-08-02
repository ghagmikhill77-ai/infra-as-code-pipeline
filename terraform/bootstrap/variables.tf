variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "state_bucket_name" {
  description = "Unique S3 bucket name for Terraform state"
  type        = string
}

variable "lock_table_name" {
  description = "DynamoDB table used for Terraform state locking"
  type        = string
  default     = "infra-as-code-pipeline-terraform-locks"
}


# Infrastructure as Code Pipeline

Automated DevOps CI/CD pipeline for an e-commerce application.

## Technologies

- GitHub
- GitHub Actions
- Terraform
- AWS
- Amazon ECR
- Amazon ECS Fargate
- Docker
- Amazon CloudWatch
- Amazon S3
- DynamoDB

## Project Structure

- `app` - Node.js application
- `terraform/modules/networking` - VPC and networking
- `terraform/modules/security` - Security groups and IAM
- `terraform/modules/compute` - ECR and ECS
- `terraform/modules/monitoring` - CloudWatch monitoring
- `terraform/environments/staging` - Staging environment
- `terraform/environments/production` - Production environment
- `.github/workflows` - GitHub Actions workflows

## Deployment Strategy

Pull Request → Staging

Merge to main → Production Approval → Production

## Project Status

Under development.

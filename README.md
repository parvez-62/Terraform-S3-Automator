# Terraform S3 Automator: Static Website Hosting Automation

## 🌐 Real-Time DevOps Project: Automated Static Website Hosting

This repository showcases a cutting-edge DevOps project that demonstrates how to automate static website hosting on AWS S3 using Terraform, enabling deployment in just 3 seconds! 🚀

## Overview

The Terraform S3 Automator is a comprehensive Infrastructure as Code (IaC) solution designed to:
- Automate S3 bucket provisioning
- Configure static website hosting
- Implement seamless deployment workflows
- Reduce manual infrastructure management

## 🎯 Project Highlights

### Quick Static Website Deployment
- **3-Second Setup**: From code to live website in mere moments
- **Full Automation**: Leverage Terraform to manage entire hosting infrastructure
- **Zero-Touch Deployment**: Minimal manual intervention required

### Key Features
- **S3 Bucket Creation**:
  * Dynamically create and configure S3 buckets
  * Define bucket names, regions, and settings programmatically
- **Static Website Hosting**:
  * Automatic website endpoint generation
  * Configure index and error documents
  * Set up public read access
- **Advanced Configurations**:
  * Enable versioning for website assets
  * Implement robust access controls
  * Configure lifecycle management for optimized storage

### DevOps Workflow Benefits
- **Reproducible Infrastructure**: Consistent deployments across environments
- **Version Control**: Manage website infrastructure like code
- **Scalability**: Easily extend and modify website hosting setup

## 🛠 Prerequisites

1. **Terraform**
   - Installed Terraform CLI
2. **AWS Account**
   - Active AWS subscription
3. **IAM Permissions**
   - User with S3 and CloudFront provisioning rights
4. **AWS CLI**
   - Configured with appropriate credentials

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/parvez-62/terraform.git
cd terraform
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Configure Website Hosting
Edit `variables.tf` to customize:
- Website bucket name
- Region
- Index and error document paths

### 4. Validate Configuration
```bash
terraform validate
```

### 5. Plan Infrastructure
```bash
terraform plan
```

### 6. Deploy Website
```bash
terraform apply
```

### 7. Instant Website Launch
- Receive automatic S3 website endpoint
- Verify deployment in AWS Console

## 📂 Repository Structure
- `main.tf`: Primary Terraform configuration
- `variables.tf`: Customizable input variables
- `outputs.tf`: Website endpoint and configuration outputs
- `website/`: Static website files directory

## 🔧 Example Terraform Configuration
```hcl
resource "aws_s3_bucket" "website_bucket" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_policy" "website_policy" {
  bucket = aws_s3_bucket.website_bucket.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.website_bucket.arn}/*"
      }
    ]
  })
}
```

## 🤝 Contributing
Contributions welcome! 
- Fork the repository
- Create feature branches
- Submit pull requests

## 📄 License
MIT License. See `LICENSE` for details.

## 🌍 Additional Resources
- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS S3 Website Hosting Guide](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)

**Automate, Deploy, Innovate! 💻🚀**

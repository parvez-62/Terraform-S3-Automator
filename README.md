# Terraform S3 Automator

## Overview
This repository demonstrates how to use **Terraform** to automate the provisioning of S3 buckets and manage their configurations on **AWS**. It serves as a foundational project to practice infrastructure as code (IaC) while focusing on S3 bucket management.

## Features
- **S3 Bucket Creation**:
  - Automate the creation of S3 buckets using Terraform.
  - Define bucket names, region, and configurations dynamically.
- **Bucket Configurations**:
  - Enable versioning for object management.
  - Apply bucket policies for access control.
  - Configure lifecycle rules for automatic archiving or deletion of objects.
- **Scalable Architecture**:
  - Plan for integrating S3 with other AWS services like EC2 or Lambda.

## Prerequisites
1. **Terraform**: Install Terraform CLI.
2. **AWS Account**: Ensure you have an active AWS account.
3. **IAM User**: Set up an IAM user with the necessary permissions to provision S3 resources.
4. **AWS CLI**: Install and configure the AWS Command Line Interface.

## Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/parvez-62/terraform.git
   cd terraform
   ```
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Review and customize `variables.tf`:
   - Update values to match your desired S3 bucket settings.
4. Validate the configuration:
   ```bash
   terraform validate
   ```
5. Plan the S3 infrastructure:
   ```bash
   terraform plan
   ```
6. Apply the Terraform scripts:
   ```bash
   terraform apply
   ```
7. Verify the resources in the AWS Management Console.

## Repository Structure
- `main.tf`: Main Terraform configuration file for S3 buckets.
- `variables.tf`: Definitions for input variables.
- `outputs.tf`: Outputs to retrieve bucket details after creation.
- `README.md`: Documentation for the project.

## Output
The Terraform apply process will create the desired S3 buckets and configurations in your AWS environment. You can verify the created resources in the AWS Management Console.


![Screenshot (52)](https://github.com/user-attachments/assets/0bee2338-ddef-444e-adbc-e44273e8a7eb)


## Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request with your ideas or improvements.

## License
This project is licensed under the MIT License. See `LICENSE` for more details.

# AWS Infrastructure Automation with Terraform

# Project Overview
This project demonstrates how to automate the provisioning of AWS infrastructure using Terraform. The goal is to set up an EC2 instance, an S3 bucket, and a Virtual Private Cloud (VPC) with proper network configurations to ensure scalability and security.

# Project Objectives
- Automate the creation of AWS resources using Infrastructure as Code (IaC) with Terraform.
- Provision EC2 instances with proper security groups and IAM roles.
- Create and manage S3 storage for data backup.
-  Set up a VPC with subnets, an internet gateway, and appropriate routing for network security.
 
# Technologies Used
 - Terraform: To define and provision infrastructure.
 - AWS: For cloud resources (EC2, S3, VPC).
 - Git: For version control.
 
# Terraform Code Overview
The Terraform code is structured into modules to maintain clarity and reusability:
- main.tf: Contains the main configuration to manage the resources.
- variables.tf: Defines the variables used in the project (e.g., AWS region, instance types).
- outputs.tf: Outputs relevant information such as EC2 instance public IP and S3 bucket URL.
- rovider.tf: Specifies the AWS provider configurations.
 
# Setup and Usage Instructions
- Install Terraform: Ensure you have Terraform installed. Install Terraform
- AWS Credentials: Configure your AWS credentials by running: **aws configure** , You’ll need your AWS Access Key 
  and Secret Access Key.
- Initialize Terraform: Navigate to the project directory and initialize Terraform : **terraform init**
- Apply the Terraform Configuration: Run the following command to apply the configuration and provision the  resources. **terraform apply**
- Check Output: Once completed, Terraform will output the details such as the public IP of the EC2 instance and the 
  S3 bucket URL
  
# Project Structure
- ├── main.tf
- ├── variables.tf
- ├── outputs.tf
- ├── provider.tf
- └── README.md
  
# Outcome
  This Terraform configuration automates the creation of:
  - A VPC with subnets and proper routing.
  - An EC2 instance within the VPC.
  - An S3 bucket for storage.
  
#  Future Improvements
 - Integrate this setup with a CI/CD pipeline.
 - Add more AWS resources such as RDS for database management.



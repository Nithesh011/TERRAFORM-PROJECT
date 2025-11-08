# Terraform Project — Automated AWS Infrastructure for Data Workloads

This repository provisions a **secure AWS data environment** using **Terraform** to support data engineering workloads and ETL pipelines.  
It automates the creation of compute, storage, and networking components used to run **PySpark** or **Airflow-based data jobs**.

---

## Features

- **S3 Data Lake Setup** — Provisions an S3 bucket for storing raw and processed datasets (with lifecycle rules).  
- **EC2 Instances for ETL Jobs** — Launches compute nodes (Ubuntu) that can be used for PySpark or Airflow task execution.  
- **VPC & Networking** — Configures isolated networking with subnets, routing tables, and security groups.  
- **IAM Roles & Policies** — Grants secure access between EC2 instances and S3 buckets without hardcoding credentials.  
- **Lifecycle Policies** — Enforces data retention and cost optimization via S3 lifecycle rules.  
- **Outputs** — Provides connection details (bucket name, EC2 public IP, region) to integrate with Airflow / ETL scripts.

---

## Tech Stack

- **Terraform** (v1.x)
- **AWS Provider** (S3, EC2, VPC, IAM)
- Optional integrations: Airflow, PySpark, BigQuery (via GCS exports)

---

## Quick Start

> **Prerequisites:**
> - Terraform installed (`v1.x`)
> - AWS CLI configured with an appropriate profile

### 1. Clone the repo
```bash
git clone https://github.com/Nithesh011/TERRAFORM-PROJECT.git
cd TERRAFORM-PROJECT
```

### 2. Configure variables
Create or update `terraform.tfvars` (see `variables.tf` for required variables).

### 3. Initialize Terraform
```bash
terraform init
```

### 4. (Optional) Validate and format
```bash
terraform fmt
terraform validate
```

### 5. Preview changes
```bash
terraform plan -var-file="terraform.tfvars"
```

### 6. Apply changes
```bash
terraform apply -var-file="terraform.tfvars"
```

### 7. Get outputs
```bash
terraform output
```

#### Example outputs:
```hcl
s3_bucket_name = "data-lake-nithesh"
ec2_public_ip  = "13.123.45.67"
vpc_id         = "vpc-0ab123cd456ef7890"
```

---

## Security & Best Practices

- Never commit AWS credentials or secrets to the repo.
- Use AWS CLI profiles or environment variables.
- Configure a **remote state backend** (S3 + DynamoDB locking) for team usage — see `backend.tf.sample`.
- Use **IAM least-privilege policies** for Terraform execution.
- Consider enabling **server-side encryption** on S3 buckets and **MFA delete** for critical buckets.

---

## Example Integration (Airflow / PySpark)

Use Terraform outputs to configure your Airflow connections or environment variables:

```python
# example: use boto3 to write to the S3 bucket created by Terraform
import os
import boto3

bucket = os.getenv("TF_VAR_s3_bucket")  # or pass from terraform output
s3 = boto3.client("s3")
s3.put_object(
    Bucket=bucket,
    Key="raw/mumbai_weather/2025-11-07.json",
    Body=b"{}"
)
```

> In Airflow, set an S3 connection using the `s3_bucket_name` output and use it in DAGs for landing and archiving raw data.

---

## Outputs (example)

```hcl
s3_bucket_name = "data-lake-nithesh"
ec2_public_ip  = "13.123.45.67"
vpc_id         = "vpc-0ab123cd456ef7890"
```

---

## Project Structure

```
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── modules/
└── README.md
```

---

## Future Enhancements

- Add Terraform Cloud / remote state example (S3 + DynamoDB locking)
- Add GitHub Actions: run `terraform fmt`, `validate`, `plan` on PRs
- Provide an architecture diagram (`architecture_diagram.png`) showing:  
  `Terraform → AWS (S3 + EC2 + VPC) → Airflow/PySpark`
- Extend to provision RDS or a data warehouse (Redshift / RDS) for analytics workloads

---

## Notes

This repository is designed to demonstrate **IaC best practices** for data engineering:
- Reproducible environment provisioning
- Secure access patterns
- Integration points for ETL tools

Use this as a base for **local testing** and **small-scale ETL job validation**.

---

## Repository

[https://github.com/Nithesh011/TERRAFORM-PROJECT](https://github.com/Nithesh011/TERRAFORM-PROJECT)
```


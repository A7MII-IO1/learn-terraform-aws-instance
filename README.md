# 🌐 Terraform AWS Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-v1.2%2B-5C4EE5?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws)
![OpenAI](https://img.shields.io/badge/OpenAI-ChatGPT_4-10a37f?logo=openai&logoColor=white)
![VS Code](https://img.shields.io/badge/Editor-VSCode-007ACC?logo=visual-studio-code)

This repository contains Terraform configuration files to provision a basic infrastructure on **AWS**, including:

- ✅ VPC
- ✅ Subnet
- ✅ EC2 instance
- ✅ S3 bucket

> Managed with **Terraform Cloud** via the `hashicorp-remote` organization.

---

## 📦 Project Structure

```
.
├── main.tf          # Main Terraform configuration
├── variables.tf     # Input variables
├── outputs.tf       # Output values
├── README.md        # Project documentation
```

---

## 🚀 Getting Started

### 1. Prerequisites

- [Terraform CLI v1.2.0+](https://www.terraform.io/downloads)
- AWS credentials configured via `~/.aws/credentials` or environment variables
- Access to [Terraform Cloud](https://app.terraform.io/)

### 2. Initialize the project

```bash
terraform init
```

### 3. Format & validate

```bash
terraform fmt
terraform validate
```

### 4. Plan & apply infrastructure

```bash
terraform plan
terraform apply
```

---

## 🔧 Configuration

### Input Variables

| Name            | Description                    | Default        |
|-----------------|--------------------------------|----------------|
| `vpc_name`      | Name tag for the VPC           | `"ExampleVPC"`      |
| `subnet_name`   | Name tag for the Subnet        | `"ExampleSubnet"`   |
| `instance_name` | Name tag for EC2               | `"ExampleInstance"`  |
| `bucket_name`   | Name tag for S3 bucket         | `"ExampleBucket"`  |

### Outputs

| Name                 | Description                          |
|----------------------|--------------------------------------|
| `vpc_id`             | ID of the created VPC                |
| `subnet_id`          | ID of the created Subnet             |
| `instance_id`        | ID of the EC2 instance               |
| `instance_public_ip` | Public IP address of the EC2         |
| `bucket_id`          | ID of the S3 bucket                  |
| `bucket_domain`      | Domain name of the S3 bucket         |

---

## 🗺️ Topology Diagram

```text
          ┌────────────┐
          │   S3       │
          │  Bucket    │
          └─────┬──────┘
                │
                │
          ┌─────▼──────┐
          │   EC2      │
          │  Instance  │
          └─────┬──────┘
                │
         ┌──────▼─────┐
         │  Subnet    │
         └──────┬─────┘
                │
            ┌───▼───┐
            │  VPC  │
            └───────┘
```

---

## 🙋‍♂️ Maintainer

**Chetniphat Varasai**  
Cloud Engineer  

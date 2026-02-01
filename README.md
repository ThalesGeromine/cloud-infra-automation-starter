# cloud-infra-automation-starter
(Terraform + AWS) automatically create a small cloud infrastructure.

This project is a **practical exercise** using **Terraform** on **AWS**.

It is intentionally simple but professionally structured to demonstrate:

- **Infrastructure as Code (IaC)**.
- Terraform configuration using **modules**.
- AWS concepts (VPC, subnet, EC2, security groups).

---

## What this project does

Using Terraform, this project:

1. Creates a **custom VPC** with:
   - A single **public subnet**
   - An **Internet Gateway**
   - A **route table** for internet access

2. Creates a **generic EC2 instance** in that subnet:
   - Uses the latest Amazon Linux 2023 AMI.
   - Attaches a security group allowing **SSH (port 22)** from a configurable CIDR.
   - Tags everything with `Project` and `Environment`.

> It does **not** install any app or web server.  
> It’s a reusable skeleton to grow into more complex infrastructure.

---

## Project structure

- `terraform/`
  - `providers.tf` – Terraform + AWS provider configuration
  - `variables.tf` – Input variables (region, instance type, etc.)
  - `main.tf` – Root module that wires together `network` and `compute`
  - `outputs.tf` – Useful outputs (VPC ID, instance IP, etc.)
  - `terraform.tfvars.example` – Example values for your variables
  - `modules/`
    - `network/` – VPC, subnet, route table, internet gateway
    - `compute/` – EC2 instance + security group

---

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) installed (v1.5+ recommended)
- An AWS account
- AWS credentials set up locally via one of:
  - `aws configure`
  - Environment variables: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, etc.
  - Shared credentials file (`~/.aws/credentials`)

---

## How to use

From the `terraform` folder:

```bash
cd terraform

# 1. Copy example variables
cp terraform.tfvars.example terraform.tfvars

# 2. (Optional) Edit terraform.tfvars to change region, instance type, etc.

# 3. Initialize Terraform
terraform init

# 4. See what will be created
terraform plan

# 5. Apply changes
terraform apply
# type 'yes' when prompted

# 6. When done, destroy everything to avoid charges
terraform destroy

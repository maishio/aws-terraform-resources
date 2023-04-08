# Terraform AWS Resources

This repository contains a collection of Terraform configurations for commonly used AWS resources. These configurations can be utilized as a starting point for your own AWS infrastructure projects.

## Table of Contents ##

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Resources](#resources)

## Prerequisites ##

- [Terraform](https://www.terraform.io/downloads.html) >= 1.3.x
- [AWS CLI](https://aws.amazon.com/cli/) >= 2.0.x
- [AWS Account](https://aws.amazon.com/)

## Usage ##

1. Clone this repository:

```bash
git clone https://github.com/your-username/terraform-aws-resources.git
```

2. Change into the repository directory:

```bash
cd terraform-aws-resources/path/to/resource
```

3. Initialize the Terraform working directory:

```bash
terraform init
```

4. Create a `terraform.tfvars` file with required variables specific to the resource. Refer to the `variables.tf` file for required inputs.

5. plan the Terraform configuration:

```bash
terraform plan
```

6. Apply the Terraform configuration:

```bash
terraform apply
```

## Resources ##

This repository includes Terraform configurations for the following AWS resources:

- [Amazon EC2 Elastic IP](./vpc_endpoint)
- [Amazon EC2 Instance](./ec2)
- [Amazon EC2 Key Pair](./key_pair)
- [Amazon ECR](./ecr)
- [Amazon VPC](./vpc)
- [Amazon VPC Endpoint](./endpoint)
- [Amazon VPC Internet Gateway](./internet_gateway)
- [Amazon VPC Nat Gateway](./nat_gateway)
- [Amazon VPC Route Table](./route_table)
- [Amazon VPC Security Group](./security_group)
- [Amazon VPC Subnet](./subnet)
- [AWS Certificate Manager](./acm)
- [AWS CloudTrail](./cloutrail)
- [AWS CodeCommit](./codecommit)
- [AWS IAM](./iam)
- [AWS Secrets Manager](./secretsmanager)

(And more)

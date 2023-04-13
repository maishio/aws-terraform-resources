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

- [Amazon CloudWatch](./terraform/cloudwatch)
- [Amazon Cognito](./terraform/cognito)
- [Amazon EC2 Elastic IP](./terraform/vpc_endpoint)
- [Amazon EC2 Instance](./terraform/ec2)
- [Amazon EC2 Key Pair](./terraform/key_pair)
- [Amazon ECR](./terraform/ecr)
- [Amazon EventBridge](./terraform/eventbridge)
- [Amazon GuardDuty](./terraform/guardduty)
- [Amazon Route53](./terraform/route53)
- [Amazon S3](./terraform/s3)
- [Amazon VPC](./terraform/vpc)
- [Amazon VPC Endpoint](./terraform/endpoint)
- [Amazon VPC Internet Gateway](./terraform/internet_gateway)
- [Amazon VPC Nat Gateway](./terraform/nat_gateway)
- [Amazon VPC Route Table](./terraform/route_table)
- [Amazon VPC Security Group](./terraform/security_group)
- [Amazon VPC Subnet](./terraform/subnet)
- [AWS Certificate Manager](./terraform/acm)
- [AWS CloudTrail](./terraform/cloudtrail)
- [AWS CodeCommit](./terraform/codecommit)
- [AWS Config](./terraform/config)
- [AWS IAM](./terraform/iam)
- [AWS Lambda](./terraform/lambda)
- [AWS Secrets Manager](./terraform/secretsmanager)
- [ELB (Elastic Load Balancer)](./terraform/elb)

(And more)

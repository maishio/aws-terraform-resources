# Terraform AWS Resources

This repository contains a collection of Terraform code to create AWS resources for general purpose use.

## Prerequisites

To use the code in this repository, the following software must be installed.

- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io/downloads.html)

## Usage

1. Log in to your AWS account using the AWS CLI:

```bash
aws configure
```

2. Clone this repository:

```bash
git clone https://github.com/maishio/terraform-aws-resources.git
cd terraform-aws-resources/path/to/resource
```

3. Initialize the Terraform working directory:

```bash
terraform init
```

4. plan the Terraform configuration:

```bash
terraform plan
```

5. Apply the Terraform configuration:

```bash
terraform apply
```

## Resources

This repository includes Terraform configurations for the following AWS resources:

- [Amazon Athena](./terraform/athena)
- [Amazon CloudFront](./terraform/cloudfront)
- [Amazon CloudWatch](./terraform/cloudwatch)
- [Amazon Cognito](./terraform/cognito)
- [Amazon EC2](./terraform/ec2)
- [Amazon ECR](./terraform/ecr)
- [Amazon ECS](./terraform/ecs)
- [Amazon EventBridge](./terraform/eventbridge)
- [Amazon GuardDuty](./terraform/guardduty)
- [Amazon Route53](./terraform/route53)
- [Amazon S3](./terraform/s3)
- [Amazon VPC](./terraform/vpc)
- [AWS Certificate Manager](./terraform/acm)
- [AWS CloudTrail](./terraform/cloudtrail)
- [AWS CodeCommit](./terraform/codecommit)
- [AWS Config](./terraform/config)
- [AWS IAM](./terraform/iam)
- [AWS Lambda](./terraform/lambda)
- [AWS Secrets Manager](./terraform/secretsmanager)
- [ELB (Elastic Load Balancer)](./terraform/elb)

(And more)

# Terraform on AWS - 3 Tier VPC
---
## Steps

1. Create a user group and user for the Terraform developer with programatic access keys and provide the following managed policies:
- AmazonEC2FullAccess
- AmazonS3FullAccess
- AmazonDynamoDBFullAccess
- CloudWatchFullAccess
- IAMFullAccess

2. Add the aws credentials to the .aws/credentials file at the home directory:

``` sh
aws configure
```
File should look like:

``` sh
cat .aws/credentials
[default]
aws_access_key_id = <ID HERE>
aws_secret_access_key = <KEY HERE>
```

3. Run Terraform commands
``` sh
terraform init
terraform validate
terraform plan
terraform apply
```
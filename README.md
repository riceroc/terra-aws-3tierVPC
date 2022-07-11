# Terraform on AWS - 3 Tier VPC

Deploys a v1.22 k8s cluster, Bastion EC2 instance in a 3 tier vpc (public,private, DB) with elastic ips. 

---
## Steps

1. Create a user group and user for the Terraform developer with programatic access keys and provide the following managed policies:

```
- AmazonEC2FullAccess
- AmazonS3FullAccess
- AmazonDynamoDBFullAccess
- CloudWatchFullAccess
- IAMFullAccess
```

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

3. Create an AWS Key Pair and copy it into the private-key folder. This is needed for the local provisioner



4. Run Terraform commands

``` sh
terraform init
terraform validate
terraform plan
terraform apply
```

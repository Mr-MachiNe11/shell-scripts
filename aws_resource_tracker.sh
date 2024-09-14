#!/bin/bash

#####################
# Author: Rinku
# Date: Sep14, 24
# Version: v1.2
# This script will report the AWS resource usage
#####################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda functios"
aws lambda list-functions

# list IAM users
echo "Print list of iam users"
aws iam list-users

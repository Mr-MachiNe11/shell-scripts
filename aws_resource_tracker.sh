#!/bin/bash

#####################
# Author: Rinku
# Date: Sep14, 24
# Version: v1.3
# This script will report the AWS resource usage
#####################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# Define the output file with a timestamp
OUTPUT_FILE="/home/ec2-user/aws_resource_report/aws_resource_report.log"

# list s3 buckets
echo "Print list of s3 buckets" >> $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE

# list EC2 instances
echo "Print list of ec2 instances" >> $OUTPUT_FILE
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $OUTPUT_FILE

# list lambda
echo "Print list of lambda functios" >> $OUTPUT_FILE
aws lambda list-functions >> $OUTPUT_FILE

# list IAM users
echo "Print list of iam users" >> $OUTPUT_FILE
aws iam list-users >> $OUTPUT_FILE

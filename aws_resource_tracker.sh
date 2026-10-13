#!/bin/bash

#################################
# Author : Shruti 
# Date : 13th-oct-2026
#
# version : v1
#
#This script will report the AWS resourcr Usage
###############################	

set -x

#Aws S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

# list EC2 instances
echo "print list of EC2 instances"
aws ec2 describe-instances

#list lambda
echo "print list of lambda function"
aws lambda list-functions

#list IAM Users
echo "print list of iam users"
aws iam list-users




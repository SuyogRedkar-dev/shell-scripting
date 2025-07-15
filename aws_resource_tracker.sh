#!/bin/bash

#####################
#  Author: Suyog 
#  Date: 15/07/2-25
#
#  Version: V1
#
#  This script will report the AWS resource usage
#####################
set -x
# AWS S3
# AWS Lambda 
# AWS EC2
# AWS IAM Users

# list s3 buckets
aws s3 ls > resourceTracker

# list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker 

# list aws lambda functions
aws lambda list-functions > resourceTracker

# list IAM users
aws iam list-users > resourceTracker


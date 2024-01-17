#!/bin/bash
#
###############
#Author: Rahul
#Date: 16th-Jan-2024
#Version: v1
#This script will report the AWS resource
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x #debug
set -e #exit the script when there is an error
set -o pipefail #exit the script when pipe error occurs
# list s3 buckets
#echo "print list of s3 buckets"
aws s3 ls

#list ec2 instances
#echo "print list of instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lamba
#echo "print list of lambda functions"
aws lambda list-functions

#echo "print list of IAM users"
#list IAM Users
aws iam list-users



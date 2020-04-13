#!/bin/bash

####################################################################################################
#                                           deploy.sh                                              #
# This cript deploys the companyNews application from a Shell (Bash recommended).                  #
# Make sure the WAR & ZIP file to deploy are in the assets folder.                                 #
# The WAR file will be deployed to AWS Elastic Beanstalk.                                          #
# The ZIP file will be unzipped and its content copied to a S3 bucket with public hosting enabled. #
####################################################################################################

export BUCKETNAMEWAR=""
export BUCKETNAMEZIP=""

echo "[INFO] Step 1: Create S3 buckets"

echo "[INFO] Step 2: Copy files to S3"
aws s3 cp ./assets/company-news.war s3://company-news-static-assets-training/
aws s3 cp ./assets/company-news.war s3://company-news-war-training/

echo "[INFO] Step 3: Deploy companyNews"

exit 0

# challenge3
Deploy a WAR file + static content in AWS using CloudFormation.
## Tech challenge parameters
- JAVA app 24/7 with resp. time under 1s
- 2 env: *training* and *production*
- Must survive single server failure
- Use Open Source software and Linux
- 1 ZIP file for static assets
- 1 WAR file for dynamic assets
- ZIP & WAR on separate servers
- App name: *CompanyNews*
- Ext. lib: [Prevayler](http://prevayler.org)
## Extra instructions
- Do it in AWS
## Prerequisites
- 1 AWS S3 bucket named *elasticbeanstalk-companynews-ap-southeast-2*
- Upload the WAR file *company-news.war* into the S3 bucket *elasticbeanstalk-companynews-ap-southeast-2*
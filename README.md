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
- 1 AWS account; you can create one for free [here](https://aws.amazon.com/free/)
- Follow the environment setup procedure prior to your 1st deployment attempt
## Setting up your environment
> I recommend using Linux; the instructions provided in this file are targeted at this line of OSes.
> Windows users can either use the [Windows sub-system for Ubuntu](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or install [Cygwin](https://cygwin.com).
- Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- Clone the [challenge3 GitHub repository](https://github.com/TME520/challenge3): `git clone https://github.com/TME520/challenge3.git`
- Open a terminal and move to the `challenge3` folder
- Copy the latest WAR and ZIP files into the `assets` folder
## Guiding principles
- Keep it simple: less is more, especially in terms of maintenance and pricing. Something that is easy to understand is easier to maintain and grow,
- Use managed services: maintenance, updates, security are all now under the responsibility of the provider, not you. It saves a lot of toil and frees up time for innovation.
## Architecture
### Components
- 1 Elastic Beanstalk (running the WAR file)
- 1 S3 bucket (hosting static content from the ZIP file)
- 1 S3 bucket (holding the WAR file to be deployed in Elastic Beanstalk)
- 1 Elastic File System (used by `companyNews` running on Elastic Beanstalk for data persistence)
### Available improvements
- Depending on how the static assets are used, it might be interesting to add a CloudFront distribution sourcing the S3 bucket hosting these assets.
## Deployment
> Setup your environment first
### Automated
> You must be in a terminal pointed to the `challenge3` folder
- Launch the `deploy.sh` script
### Manual
#### Spinning up the training environment
- Sign into [the AWS console](https://aws.amazon.com)
- Go to CloudFormation
- Click on *Create stack*
- Select *Upload a template file*
- Click on *Choose file*
- Select *training.yaml*
- Click *Next*
- Enter *company-news-training* in *Stack name*
- Click *Next* twice
- Click on *Create stack*
#### Spinning up the production environment
- Sign into [the AWS console](https://aws.amazon.com)
- Go to CloudFormation
- Click on *Create stack*
- Select *Upload a template file*
- Click on *Choose file*
- Select *production.yaml*
- Click *Next*
- Enter *company-news-production* in *Stack name*
- Click *Next* twice
- Click on *Create stack*
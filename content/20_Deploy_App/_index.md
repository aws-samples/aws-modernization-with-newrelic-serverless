+++
title = "Deploy Demo App"
chapter = false
weight = 20
+++

## AWS DynamoDB, Lambda, and CloudWatch Example App

The AWS DynamoDB, Lambda, and CloudWatch Example App creates an AWS DynamoDB and Lambda function with the Python language bindings for CDK. Lambda function gets triggered from a CloudWatch event every minute.

![Architecture](/images/app-architecture.png)

## Installation

Locate and open **CloudShell** using the search bar in the AWS Console:

![CloudShell](/images/enable_monitoring/open-cloudshell.png)

Then, enter the following commands in sequence:

```bash
wget https://nr-serverless-workshop.s3.us-west-2.amazonaws.com/dynamodb-lambda.tar.gz
```

```bash
tar xvfz dynamodb-lambda.tar.gz
```

```bash
cd dynamodb-lambda
```

```bash
python3 -m venv .env
```

```bash
source .env/bin/activate
```

```bash
pip install -r requirements.txt
```

```bash
sudo npm i -g aws-cdk
```

```bash
cdk bootstrap
```

```bash
cdk deploy
```

When prompted, type **y** and hit enter/return to confirm installation:

![CDK](/images/cdk-deploy.png)

After a couple of minutes, you should see the following information in CloudShell:

![CDK](/images/cdk-success.png)

Congratulations!  You have successfully installed the example application that will be used for the remainder of this workshop.

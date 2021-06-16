+++
title = "Deploy Demo App"
chapter = false
weight = 20
+++

{{% notice note %}}
If you are at an AWS event where the Event Engine is being used you may skip this section as this application has already been deployed for you.
{{% /notice %}}

## AWS DynamoDB, Lambda, and CloudWatch Example App

The AWS DynamoDB, Lambda, and CloudWatch Example App creates an AWS DynamoDB and Lambda function with the Python language bindings for CDK. Lambda function gets triggered from a CloudWatch event every minute.

![Architecture](/images/app-architecture.png)

## Installation

[Click Here](https://github.com/aws-samples/aws-cdk-examples/tree/master/python/dynamodb-lambda) for detailed installation instructions. (The installation process can be perfomed inside the AWS Console itself using CloudShell)

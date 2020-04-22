+++
title = "Additional Serverless Topics"
date = 2019-09-09T17:35:02+01:00
weight = 80
chapter = true
+++

# Additional Serverless Topics

## AWS Cloud Development Kit (AWS CDK)

AWS CDK is an open source software development framework to model and provision your cloud application resources using familiar programming languages.

Provisioning cloud applications can be a challenging process that requires you to perform manual actions, write custom scripts, maintain templates, or learn domain-specific languages. AWS CDK uses the familiarity and expressive power of programming languages for modeling your applications. It provides you with high-level components that preconfigure cloud resources with proven defaults, so you can build cloud applications without needing to be an expert. AWS CDK provisions your resources in a safe, repeatable manner through AWS CloudFormation. It also enables you to compose and share your own custom components that incorporate your organization's requirements, helping you start new projects faster.

Some benefits of CDK:

* Easier cloud onboarding
* Faster development process
* Customizable and sharable 
* No context switching

For more information visit [AWS Cloud Development Kit Home](https://aws.amazon.com/cdk/)

To see AWS CDK in action and complete a workshop visit https://cdkworkshop.com

## Amazon EventBridge

Amazon EventBridge is a serverless event bus that makes it easy to connect applications together using data from your own applications, integrated Software-as-a-Service (SaaS) applications, and AWS services. EventBridge delivers a stream of real-time data from event sources, such as Zendesk, Datadog, or Pagerduty, and routes that data to targets like AWS Lambda. You can set up routing rules to determine where to send your data to build application architectures that react in real time to all of your data sources. EventBridge makes it easy to build event-driven applications because it takes care of event ingestion and delivery, security, authorization, and error handling for you.

Schema Registry - Now in Preview: As your applications become more interconnected through events, you need to spend more effort in finding events and understanding their structure in order to write code to react to those events. The Amazon EventBridge schema registry stores event structure - or schema - in a shared central location and maps those schemas to code for Java, Python, and Typescript so it’s easy to use events as objects in your code. Schema from your event bus can be automatically added to the registry through the schema discovery feature. You can connect to and interact with the schema registry from the AWS Management Console, APIs, or the SDK Toolkits for Jetbrains (Intellij, PyCharm, Webstorm, Rider) and VS Code.

Benefits:

* Connect data from SaaS apps
* Easily build event-driven architectures
* Write less code
* Reduce operational overhead

For more information about Amazon EventBridge visit [Amazon EventBridge Home](https://aws.amazon.com/eventbridge/)
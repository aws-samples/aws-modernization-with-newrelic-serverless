+++
title = "New Relic Monitoring for AWS Lambda: Errors Page"
date = 2019-09-09T17:42:10+01:00
weight = 10
+++

When troubleshooting a function, the **Errors** page is a great place to start. We will now intentionally break the instrumentation for our Lambda function and use the Errors page to view the result of that change.

Open a new browser tab to your **RequestUnicorn** Lambda function in the AWS Console:

![RequestUnicorn Lambda Function](/images/wildrydes/requestunicorn-lambda-function.png)

Scroll down to the **Function code** section of the page. Scroll down in the source code and change ***username*** to ***user***:

![Lambda Handler](/images/wildrydes/lambda-handler.png)

**Save** your changes:

![Save Lambda Changes](/images/wildrydes/lambda-save-changes.png)

Open your browser to the */ride* page of your Wild Rydes website. Click anywhere on the map, and then click **Request Unicorn**. ***You should receive an error*** Repeat this process a few times:

![Request Unicorn Delivery](/images/wildrydes/request-unicorn-delivery.png)

Back in your New Relic One browser tab, click on the **Errors** link. (This is located under the CloudWatch metrics link you followed in an earlier module).  On this page you will see a high level breakdown of all errors that have occured in your Lambda function.  You will be presented with a grouping of error types, the percentage of Lambda executions that have resulted in errors, and the actual error messages themselves:

![Lambda Error Page](/images/wildrydes/lambda-errors-page.png)


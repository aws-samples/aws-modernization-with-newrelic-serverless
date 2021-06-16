+++
title = "Instrument Lambda Functions"
chapter = false
weight = 40
+++

## Instrumenting AWS Lambda Functions

Now that we have linked your AWS and New Relic accounts, let's install the New Relic Lambda layer for each of the AWS Lambda functions we wish to monitor in our AWS example application.

First, let's export an environment variable containing our New Relic account id to make it easier to instrument each of our Lambda functions:

```bash
export NR_ACCOUNT_ID=YOUR_ACTUAL_NR_ACCOUNT_ID_GOES_HERE
``` 

Next, we need to determine the names of the functions we wish to instrument:

```bash
newrelic-lambda functions list
```
![FunctionNames](/images/enable_monitoring/function-names.png)

Using the names of the functions retured by the command above, copy the commands listed below into CloudShell (Replacing --function arguments with their actual names) to instrument your Lambda functions:

```bash
newrelic-lambda layers install --nr-account-id $NR_ACCOUNT_ID --function PRODUCER_FUNCTION_NAME  --upgrade --enable-extension-function-logs
```
```bash
newrelic-lambda layers install --nr-account-id $NR_ACCOUNT_ID --function CONSUMER_FUNCTION_NAME  --upgrade --enable-extension-function-logs
```
{{% notice note %}} 
The **--upgrade--** flag ensures all future layer versions of your Lambda function will include the New Relic Lambda extension by default.
{{% /notice %}}

{{% notice note %}} 
The **--enable-extension-function-logs** flag configures the function to forward the CloudWatch Logs associated with the function to New Relic.  This is not enabled by default when instrumenting functions due to the added cost, but as you will see later on in this workshop, provides great value in terms of observability.
{{% /notice %}}

To list your Lambda functions and verify that they are now instrumented, you can run the following command again:

```bash
newrelic-lambda functions list
```

Congratulations!  You have successfully instrumented both Lambda functions used by the example application!

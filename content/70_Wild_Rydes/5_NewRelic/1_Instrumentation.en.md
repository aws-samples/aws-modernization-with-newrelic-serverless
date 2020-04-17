+++
title = "Intstrumentation"
date = 2019-09-09T17:42:10+01:00
weight = 10
+++

### 1. Instrumenting your Lambda Function

* In the AWS Console, Find the [New Relic layer](https://nr-layers.iopipe.com/) that matches your runtime and region. We will be using the **NewRelicNodeJS12X** layer for this workshop.
* Copy the Amazon Resource Name (ARN) of the most recent version and add it in the AWS Lambda console for your function:

![Add Layer](/images/wildrydes/add-layer.png)

* Click on **Layers** (highlighted in blue in the screenshot above), then click on the **Add a layer** button.

![Layer ARN](/images/wildrydes/layer-arn.png)

1. Select the **Provide a layer version ARN** radio option.
1. Paste in the *NewRelicNodeJS12X* ARN you copied to clipboard in a previous step.
1. Click the orange **Add** button on the bottom right.

* Update your functions handler to point to the newly attached layer in the console for your function:
  * *newrelic-lambda-wrapper.handler*

![Lambda Handler](/images/wildrydes/update-lambda-handler.png)

* Add the appropriate environment variables to your Lambda console:

![Edit Env Vars](/images/wildrydes/edit-env-vars.png)

* Click **Edit**:

![Edit Env Vars](/images/wildrydes/env-var-editor.png)

1. *NEW_RELIC_ACCOUNT_ID*: Your New Relic account ID
1. *NEW_RELIC_LAMBDA_HANDLER*: Path to your initial handler. (*index.handler*)

### 2. Stream CloudWatch logs to New Relic Lambda

Previously in this workshop, you set up a *newrelic-log-ingestion* Lambda function. Now that you've also instrumented your Lambda function, you must link that function's CloudWatch Logs stream to the *newrelic-log-ingestion* Lambda. To do this:

* Open CloudWatch and select **Log groups** in the left-hand menu, and then select the log group radio button for the *RequestUnicorn* function:

![Select Log Group](/images/wildrydes/select-log-group.png)

* Select **Actions** and choose **Stream to AWS Lambda**.
* Under **Lambda function**, select the *newrelic-log-ingestion* function.
* Click the **Next** button.
* Set the **Log format** to *JSON*.
* Click the **Next** button.
* Click the **Start streaming** button.

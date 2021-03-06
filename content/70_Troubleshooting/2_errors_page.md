+++
title = "New Relic Serverless for AWS Lambda: Errors Page"
chapter = false
weight = 2
+++

One of the first places to look when diagnosing problems related to your AWS Lambda functions is the Errors page.  Let's navigate there now by clicking on the **Errors** link located in the navigation menu on the left side of the screen in the section labeled *EVENTS*:

![Errors](/images/troubleshooting/errors.png)

The **Errors** page shows common errors occuring with your Lambda function and the rate at which they are occuring.  It also provides a chart that allows you to drill down into specific errors and begin the troubleshooting process.  Your chart should show only one error type (ResourceNotFoundException) having occured multiple times. Let's click on that chart now:

![Error Chart](/images/troubleshooting/error-chart.png)

You should now be presented with the **Error details** page.  One of the most pertinent pieces of information provided here is the actual error trace.  Let's expose it by clicking the **Error Trace** link located atop the *Invocation Attributes* table:

![Error Trace](/images/troubleshooting/error-trace.png)

In the section of the trace highlighted in green above, you can see New Relic's instrumentation wrapping the Lambda function.  In red, you can see the file responsible for triggering the error trace, along with the actual line number of the offending code itself.  Please note that the line number may not be exact due to the way new Relic wraps your function.

Taking a look at the code, we can see exactly where the error occured and, in the real world, modify it to be more verbose in the future:

![Lambda Code](/images/troubleshooting/lambda-code.png)

{{% notice note %}}
You may now close the **Error details** page by clicking the **X** at the top right hand corner of your screen.  Please leave the Errors page open though as it will be used in the next section of this workshop.
{{% /notice %}}

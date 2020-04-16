+++
title = "New Relic Monitoring for AWS Lambda: Distributed Tracing"
date = 2019-09-09T17:42:10+01:00
weight = 20
+++

Let’s take a look at another troubleshooting example, this time using distributing tracing. The **Distributed tracing** page displays all the traces for a particular function. Click on **Distributed tracing**:

![Distributed Tracing](/images/wildrydes/distributed-tracing-no-errors.png)

Click on one of the **Root Entry Spans** that doesn't contain errors (an example is highlighted in blue above) to drill down into a single invocation of your Lambda function, and then click on the **Expand all** link:  

![Distributed Tracing Details](/images/wildrydes/trace-details-no-errors.png)

We can see here that RequestUnicorn is a simple Lambda function consisting of 3 spans.  Spans represent the time spent in a service or a service function. The span count includes both in-process and cross-process spans, but in-process spans are collpased by default.

Clicking on an individual span, **DynamoDB putItem** in this case, provides performance data for that particular span. Distributed tracing is extremely valuable in diagnosing exactly where in your services and/or services function performance-related issues are taking place:

![Span Details](/images/wildrydes/span-details.png)

Click the **X** on the top right hand corner of the span details foldout to retirn to the Distributing tracing page.  This time, click on a Root Entry Span that ***does*** contain an error (the error count is displayed in red in the final column of the table):

![Span Error](/images/wildrydes/span-details-error.png)

This time we see only two spans reported which means the error here was fatal and prevented the Lambda function from completing its execution.  If we click on the **RequestUnicorn** span, we can dig a bit deeper:

![Span Error](/images/wildrydes/individual-span.png)

Here we see the high level **Performance** data for the selected span - Average duration and throughput - as well as any errors, if they occurred.  Click on **Error Details** to drill down a bit further:

![Span Error](/images/wildrydes/span-error-details.png)

Now we know that this particular Lambda invocation failed due to a *ReferenceError* where the variable *username* was referenced but not defined.  

Finally, click on the **Attributes** tab.  The Attributes tab provides useful information such as how the Lambda function was invoked (apiGateway), what URL the user attempted to access (/ride), and what application deployment stage the function is located in (prod):

![Attributes Tab](/images/wildrydes/attributes-tab.png)

Scroll through the entire Attributes tab to see all the information it provides.
 

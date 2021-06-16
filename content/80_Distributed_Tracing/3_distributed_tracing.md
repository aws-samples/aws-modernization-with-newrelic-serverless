+++
title = "New Relic Serverless for AWS Lambda: Distributed Tracing"
chapter = false
weight = 3
+++

Now that we have intentionally instituted an error in our code, let's take a look at how New Relic for AWS Lambda's distributed tracing feature can help us diagnose problems like this that might occur in the real world.

Hop on over to the distributed tracing page by clicking on the **Distributed tracing** link located in the navigation menu on the left side of the screen in the section labeled *MONITOR*:

![Distributed Tracing](/images/distributed_tracing/distributed-tracing.png)

New Relic automatically groups your traces by type. Click on the checkbox next to **NameError**, then click on the name of the trace group located in the *Trace groups* table at the bottom of the page: 

![Latest Trace](/images/distributed_tracing/latest-trace.png)

Now, click on any trace in the list:

![Traces](/images/distributed_tracing/trace-list.png)

Click on the span containing the error (its text will be in red), and then click **Error Details** to see the actual error thrown by the Lambda function:

![ErrorDetails](/images/distributed_tracing/error-details.png)

We can quickly see that we have an undefined variable named *TABLE_NAME* within our code.

If you have log forwarding enabled for your function, you can click the **See logs** button at the top right to see the log entries for the function that occurred exactly when the error took place:

![SeeLogs](/images/distributed_tracing/see-logs.png)

We refer to this as **Logs in context**:

![SeeLogs](/images/distributed_tracing/logs-in-context.png)

If you'd like a second pair of eyes to help you diagnose a problem, you can click on the **Copy permalink** button near the top right hand corner of the screen:

![PermaLink](/images/distributed_tracing/perma-link.png)

You will notice this permalink button located on many of New Relic's curated views, allowing you to quickly and easily collaborate with other members of your organization.

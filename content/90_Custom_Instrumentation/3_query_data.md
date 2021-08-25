+++
title = "Querying Custom Event Data"
chapter = false
weight = 3
+++

Within 1-2 minutes of adding a custom event to your Lambda function, it should begin reporting that data to New Relic. Let's take a look at what is being sent over using the *Query Builder* by clicking on the **Query your data** button on your New Relic One homepage:

![NRQL](/images/custom/query-your-data.png)

With the query builder, you can run queries of your data to create custom charts and other visualizations. You can also build custom dashboards containing multiple charts.

Use the query builder to:

* Quickly access your data and build customized charts to learn and understand the health of your infrastructure, applications, and other services.
* Add charts to your dashboards to obtain a complete real-time view of the state of your system.
* Share your charts with colleagues or users in just two clicks.
* Get acquainted with querying by using basic mode, then switch to advanced mode to refine your charts using NRQL.
* Create NRQL alerts from the queries you build and run.

The query builder has several modes:

* Basic mode: Allows users without any knowledge of the New Relic Query Language (NRQL) to create queries using dropdown boxes.
* Advanced (NRQL) mode: NRQL queries may be simple or complex, depending on what data you want to use and how to display it in your chart.
* Advanced (PromQL-style) mode: Allows users already familiar with the Prometheus Query Language to use it instead of NRQL.

Let's take a look at the custom event data we sent over to New Relic using NRQL mode.  If you are not already in that mode, please select it:

![NRQL1](/images/custom/nrql-mode.png)

Copy and paste the following line into *Query Builder* and hit enter/return:

```sql
FROM ProducerLambda SELECT *
```

![NRQL1](/images/custom/run-query.png)

Much like SQL, the NRQL query above queries our custom **ProducerLambda** event type like a SQL table.  Scrolling from left to right in the results listed in the table, we can see information that the New Relic Python agent automatically adds to custom events on our behalf:

* Timestamp
* APP ID - If your function is part of a larger application, you can pass the application name to New Relic and it will automatically associate it to the proper application ID
* AWS.LAMBDA.ARN - Amazon Resource Names (ARNs) uniquely identify AWS resources
* AWS.LAMBDA.EVENT SOURCE.ARN - The ARN of the resource that called the Lambda function. In our case, a CloudWatch Event
* AWS.LAMBDA.FUNCTION VERSION - The version of the function that was called
* NR.SOURCE.PIPELINE - This shows which service forwarded this custom event.  In our case, AWS Lambda.

Lastly, appended to the end of the data provided by the agent by default, is the custom attribute we appended: **PRODUCER TABLE NAME**

![NRQL2](/images/custom/custom-query-results.png)

As with any NRQL query, you can add the results as a chart to a custom dashboard with the click of a button.  Let's do that now by clicking the **Add to Dashboard** button at the bottom right of the query results table:

![Create Dashboard](/images/custom/create-new-dashboard.png)

As pictured above, enter a name for the chart we will be creating, and then click the **Or create new dashboard** link: 

![Create Dashboard](/images/custom/create-new-dashboard1.png)

Give your dashboard a name, and then click on the **Copy to dashboard** button.

You can navigate to your newly created dashboard by returning to your New Relic One homepage, hovering over the *Dashboards* link, searching for your dashboard by name, and then clicking the result:

![Show Dashboard](/images/custom/create-new-dashboard2.png)

For more information on creating custom dashboards, we highly recommend that you signup for one of our 1 hour live webinars on [Getting started with Dashboards and NRQL](https://learn.newrelic.com/webinar-getting-started-with-dashboards-nrql).

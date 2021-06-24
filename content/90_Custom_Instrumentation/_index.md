+++
title = "Custom Events"
chapter = true
weight = 90
+++

## Record custom events and attributes

As you have seen already in this Workshop, New Relic agents send event data to New Relic as part of the normal harvest cycle whenever your Lambda function is executed. You can also add your own custom APM events and attributes, which you can then use for querying and charting.

Before we proceed in adding a custom event to our Lambda function, let's first clean up the errors we intentionally introduced earlier in the Workshop.

## Restore DynamoDB table

1. Open DynamoDB in the AWS Console by searching for it via the search bar at the top of the screen.
1. Click on the **Backups** link near the top left hand side of your screen
1. Select the ***demotable*** table.
1. Click the **Restore backup** button.

![Restore Table](/images/custom/restore-table.png)

Scroll down to the **Backup table details** section and copy the table's original name:

![Restore Table1](/images/custom/restore-table1.png)

Scroll back up to the top of the page and paste it into the field labeled **New table name**:

![Restore Table2](/images/custom/restore-table2.png)

Finally, scroll down to the bottom of the page and click the **Restore table** button.

## Fix your code

Navigate to **Lambda** within the AWS Console by searching for it in the search bar at the top of your AWS Console screen. Then, search for and click on the link to the example **producer** function link:

![Lambda Link](/images/distributed_tracing/lambda-link.png)

Scroll down to the section labeled *Code source* and double-click file named **lambda_function.py** to open it:

![Function Code](/images/distributed_tracing/function-code.png)

Rename the variable *DB_TABLE_NAME* back to *TABLE_NAME*:

![Rename Constant](/images/distributed_tracing/rename-constant.png)

Click the **Deploy** button located at the top right hand side of the *Code source* section of the page:

![Deploy Function](/images/distributed_tracing/deploy-function.png)

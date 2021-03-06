+++
title = "Delete DynamoDB Table"
chapter = false
weight = 1
+++

Amazon DynamoDB is a key-value and document database that delivers single-digit millisecond performance at any scale. It is one of the more common AWS services coupled with AWS Lambda to produce web application backend services.

To simulate the inability of our example application to access DynamoDB, let's delete the DynamoDB table the Lambda functions read from and write to.

1. Open DynamoDB in the AWS Console by searching for it via the search bar at the top of the screen.
1. Click on the **Tables** link near the top left hand side of your screen
1. Select the ***demotable*** table.
1. Click the **Delete table** button.
 
{{% notice warning %}}
Make sure you tick the checkbox for **Create a backup before deleting this table**.
{{% /notice %}}

Upon clicking the **Delete table** button, you will be presented with the following dialog for deletion confirmation:

![New Relic One](/images/troubleshooting/delete-table.png)

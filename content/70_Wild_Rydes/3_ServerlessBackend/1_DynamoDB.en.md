+++
title = "DynamoDB"
date = 2019-09-09T17:42:10+01:00
weight = 10
+++

### 1. Create an Amazon DynamoDB Table

Use the Amazon DynamoDB console to create a new DynamoDB table. Call your table `Rides` and give it a partition key called `RideId` with type String. The table name and partition key are case sensitive. Make sure you use the exact IDs provided. Use the defaults for all other settings.

After you've created the table, note the ARN for use in the next step.

**:white_check_mark: Step-by-step directions**

1. Go to the [Amazon DynamoDB Console][dynamodb-console]
1. Choose **Create table**.
1. Enter `Rides` for the **Table name**. This field is case sensitive.
1. Enter `RideId` for the **Partition key** and select **String** for the key type. This field is case sensitive.
1. Check the **Use default settings** box and choose **Create**.
    ![Create table screenshot](/images/wildrydes/ddb-create-table.png)
1. Scroll to the bottom of the Overview section of your new table and note the **ARN**. You will use this in the next section.

[dynamodb-console]: https://console.aws.amazon.com/dynamodb/home
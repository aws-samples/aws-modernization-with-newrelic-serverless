+++
title = "New Relic"
date = 2019-09-09T17:42:10+01:00
weight = 70
+++

### 7. New Relic Cleanup
Remove the New Relic integration policy and Lambda logging function

**:white_check_mark: Step-by-step directions**

1. Navigate to your AWS Lambda functions in region us-west-2: [Lambda functions][lambda-console].
1. Select the checkbox next to the **newrelic-log-ingestions** function
1. From the *Actions* dropdown menu, select **Delete**
1. Complete the function deletion process.
1. Now, head over to the [IAM Console][iam-console] 
1. Click on **roles** under the *Access Management* located in the navigation section on the left hand side of the page.
1. Search for **newrelic**
1. Click the checkbox next to **NewRelicInfrastructure-Integrations**
1. Click the **Delete role** button.
1. Complete the role deletion process.

[lambda-console]: https://console.aws.amazon.com/lambda
[iam-console]: https://console.aws.amazon.com/iam

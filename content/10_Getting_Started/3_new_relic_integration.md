+++
title = "Connect AWS to New Relic"
date = 2019-10-03T10:54:25-07:00
weight = 3
+++

{{% notice note %}}
China regions are not supported.
{{% /notice %}}

To connect your Amazon account to New Relic Infrastructure:

* Go to [infrastructure.newrelic.com](https://infrastructure.newrelic.com)  > **AWS**. Click on the **Lambda** service tile to get started.
* Open another browser tab and navigate to the AWS IAM console, click **Roles**, then click **Create role**, then click **Another AWS account**:

![Create Role](/images/wildrydes/create-role.png)

 1. For *Account ID*, use *754728514883*
 1. Check the *Require external ID* box
 1. For *External ID*, enter your New Relic account ID.
 1. **Do not** enable the setting to *Require MFA* (multi-factor authentication).
 1. Click the **Next: Permissions** button at the bottom right to continue.

* Attach the **Policy:** Search for *ReadOnlyAccess*, select the checkbox for the policy named ReadOnlyAccess, then click **Next: Tags**:

![Attach Policy](/images/wildrydes/attach-policy.png)

* Click **Next: Review**.
* For the **Role name**, enter *NewRelicInfrastructure-Integrations*, then click **Create role**:

![Name Role](/images/wildrydes/role-name.png)

* Select the newly created role from the listed roles. On the **Role summary** page, select and copy the entire **Role ARN** (required later in this procedure).
* Configure a **Budgets** policy: While viewing the **Role summary** for your new role, select  **Add inline policy**.

![Inline Policy](/images/wildrydes/add-inline-policy.png)

* Create a **Custom policy**: Enter a policy name (for example, *NewRelicBudget*), add the following permission statement, and then select **Apply policy**.
```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "budgets:ViewBudget"
      ],
      "Resource": "*"
    }
  ]
}
```
* Return to the New Relic UI to enter your AWS account name and the ARN for the new role.
* Select the Amazon Web Services to be monitored (**Lambda**, at minimum) with New Relic Infrastructure integrations, then **Save**.

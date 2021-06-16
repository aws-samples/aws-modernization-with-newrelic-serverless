+++
title = "Edit Lambda Code"
chapter = false
weight = 2
+++

It's hard to believe, but sometimes code changes that fix one problem often cause another.  Let's modify one of our Lambda functions and intentionally introduce an error.

Navigate to **Lambda** within the AWS Console by searching for it in the search bar at the top of your AWS Console screen. Then, search for and click on the link to the example **producer** function link:

![Lambda Link](/images/distributed_tracing/lambda-link.png)

Scroll down to the section labeled *Code source* and double-click file named **lambda_function.py** to open it:

![Function Code](/images/distributed_tracing/function-code.png)

Rename the variable *TABLE_NAME* to *DB_TABLE_NAME*:

![Rename Constant](/images/distributed_tracing/rename-constant.png)

Click the **Deploy** button located at the top right hand side of the *Code source* section of the page:

![Deploy Function](/images/distributed_tracing/deploy-function.png)

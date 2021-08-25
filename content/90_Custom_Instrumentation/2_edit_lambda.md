+++
title = "Edit Lambda Code"
chapter = false
weight = 2
+++

We will now edit the Lambda code again, this time in the proper way by using CDK to deploy our changes. We will be creating a custom event named **ProducerLambda**.

If you have closed your **CloudShell** tab, please open it again and make sure you are in your home directory.

{{% notice note %}}
If you are still within your Python virtual environment you will see that your shell prompt begins with **(.env)**.  Exit the environment with the command **deactivate** and return to your home directory with the command **cd**.`
{{% /notice %}}

First, we will need to open the Lambda function in CloudShell for editing:

```bash
cd dynamodb-lambda
```

```bash
vi lambda/producer/lambda_function.py
```

Next, we will need to import and initialize the New Relic Python APM agent, which is included in the New Relic layer added by the instrumentation process we performed earlier, by adding the following 3 lines of code to the top of the function:

```python
import newrelic.agent

newrelic.agent.initialize()
@newrelic.agent.lambda_handler()
```
{{% notice note %}}
In order to begin inputting text using *vi*, you must enter interactive mode by hitting the **i** key.
{{% /notice %}}

![Import Agent](/images/custom/import-agent.png)

Next, we will add a single line of code to report a custom event containing the name of the DynamoDB table being written to (you will need to scroll down a bit in the code using your down arrow key):

```python
newrelic.agent.record_custom_event('ProducerLambda', {'producer_table_name': TABLE_NAME})
```

![Custom Event](/images/custom/custom-event.png)

To save your changes in *vi*, hit **Escape**, **:**, **wq**, and hit enter/return.

Finally, To deploy your changes, enter the following commands:

```bash
source .env/bin/activate
```

```bash
sudo npm i -g aws-cdk
```

```bash
cdk deploy
```

Congratulations!  You have successfully added custom instrumentation to your Lambda function!

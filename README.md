

# AWSWorkshop.io New Relic Serverless Workshop

Levrage New Relic Observabilty Tools to Monitor, Track and get insights on your serverless workloads


## Development

This website is available at two paths https://newrelic-serverless.awsworkshop.io/ and https://newrelic-serverless.awsworkshop.io/ee/

https://newrelic-serverless.awsworkshop.io/ee/ should be used when executing the workshop using AWS EventEngine, which has the content specifically tailored for EventEngine AWS accounts. Example, Marketplace does not work in EventEngine vended AWS accounts.

All the files with .ee.md are rendered in /ee/ path.

Each .md file under content/ folder is symlinked to its own name with .ee suffix by default. For example /content/20_Deploy_App/_index.md is symlinked to /content/20_Deploy_App/_index.ee.md. That ensures that you are not duplicating the content.

However, if you need a different content under /ee path remove the specific file's symlinking and create a new file with .ee.md 
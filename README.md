# RevenueCloudSubscriptionManagement
This repository is meant to contain simple examples of how the Subscription Management - Credit and Invoice Connect APIs can be consumed. There are readily usable templates ranging from scripts that will actively listen for platform events from the Salesforce org and publish them on Slack, to Writing a UI action button and Invocable Actions for these APIs.

## Example 1 Credit Memo Events Consumption
This code[here](./Credit-Memo-Events-Consumption/CreditMemoEventConsumptionExample.js)] snippet shows how Salesforce Credit Memo Platform events can be consumed by custom integrations.
Most Async API will emit platform events to notify the users for completion. Customers can actively listen to these events and integrate it with their own custom workflows.

## Tools Required
- [Node.js and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

## References:
- [JSforce](https://jsforce.github.io/)

- [Slack Web Hook](https://api.slack.com/messaging/webhooks)

- [Salesforce Platform Event](https://developer.salesforce.com/docs/atlas.en-us.platform_events.meta/platform_events/platform_events_intro.htm)

## Example 2 Credit-Memo-Events-Consumption

# paulo-design

---

## Serverless Paulo

The main goal of the paulo service is to send e-mails.

We first decided to make paulo serverless as a **cloud function**. The reasons for that are:

- We won't be sending e-mails all the time, and when we send, it will be in a "batch" mode, because e-mails are triggered by new leaks.
- Cloud functions are cold, meaning they are not constantly running like a service instance, so this results in fewer costs for us.

However, we faced some issues with the Gmail auth when trying to set up the Cloudflare Worker.

To have the two possible ways to send e-mails with a Gmail account.

1. We could have the Google sdk in the worker, but the sdk excids the size limit of the worker.
2. The other way is to communicate with the Google API, but there is no way to obtain the auth token without the browser, which we will not have with paulo.

Another approach would be to use a Microsoft account however, the prices are not of our liking.

With this being said, we changed the approach and decided that would be better to create a **go service**.


---

## Server Paulo

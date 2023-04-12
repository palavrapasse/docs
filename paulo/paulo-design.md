# paulo-design

---

## Serverless Paulo

The main goal of the paulo service is to send e-mails.

We first decided to make paulo serverless as a **cloud function**. The reasons for that are:

- We won't be sending e-mails all the time, and when we send, it will be in a "batch" mode, because e-mails are triggered by new leaks.
- Cloud functions are cold, meaning they are not constantly running like a service instance, so this results in fewer costs for us.

However, we faced some issues with sending e-mails with Gmail accounts when trying to set up the Cloudflare Worker:

1. We could use Google SDK in the worker, but the bundle size exceeds the size limit of the worker (`1MB`).
2. The other way is to communicate with the Google API, but there is no way to obtain the authentication token without the browser (OAuth 2.0), which is not available in workers.

Another approach would be to use a Microsoft API, but their pricing model is too *enterprise*.

With this being said, we changed the approach and decided that would be better to create a **go service**.


---

## Server Paulo

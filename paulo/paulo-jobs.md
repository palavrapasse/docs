# paulo-jobs

This file describes the jobs that run in the **paulo** service.

---

The **paulo** service has two running jobs:

1. sender
2. resetter

## sender

This job is responsible to try to resent the emails that weren't send previouly. This job runs every **hour**.

It follows the steps:

1. Get all the emails stored
2. For each email
    1. Get available email sender
    2. Send the email
    3. Increments counter of the email sender
    4. Stores the email sender
3. Deletes the emails


## resetter

This job is responsible to change the counter of the email sender to `0`. This job runs every **day at 23:00:03**.

It follows the steps:

1. Changes the email senders counter to 0 of the email net 
2. Stores the email net
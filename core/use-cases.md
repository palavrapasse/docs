# use-cases

This file keeps track of all use cases our product has in mind. We tend to describe them on both a product and technical level, so anyone can get a clear picture of the needed inputs and expected outputs for each of them.

---

In the sections above you can find all the use cases that have been noted down and accepted towards increasing the product value. Not all of them are integrated in the [current version](changelog.md), if you want to find what is currently implemented and integrated, please refer to the following table.

|Use Case|Scope|Integrated in|
|--------|-----|-------------|
|[001 - Check if my credentials are leaked](#001---check-if-my-credentials-are-leaked)|`Query`|N/A|
|[002 - Check if my friends/family credentials have been leaked](#002---check-if-my-friendsfamily-credentials-have-been-leaked)|`Query`|N/A|
|[003 - List all leaks](#003---list-all-leaks)|`Query`|N/A|
|[004 - List most recent leaks](#004---list-most-recent-leaks)|`Query`|N/A|
|[005 - List all affected platforms](#005---list-all-affected-platforms)|`Query`|N/A|
|[006 - List most recent affected platforms](#006---list-most-recent-affected-platforms)|`Query`|N/A|
|[007 - Subscribe to new leaks](#007---subscribe-to-new-leaks)|`Pub/Sub`|N/A|
|[008 - Subscribe to new leaks that affect me](#008---subscribe-to-new-leaks-that-affect-me)|`Pub/Sub`|N/A|
|[009 - Subscribe to new leaks that affect my friends/family](#009---subscribe-to-new-leaks-that-affect-my-friendsfamily)|`Pub/Sub`|N/A|
|[010 - Request exposed credentials for my e-mail address](#010---request-exposed-credentials-for-my-e-mail-address)|`Query`|N/A|

---

## 001 - Check if my credentials are leaked

This use case is self-explanatory: **Given** my e-mail address, I would like to **find** if there are any **credentials** exposed in the database.

**Inputs**:

- 1x E-mail address

**Outputs**:

- 0..* Leak references

Please refer to [use case #010](#010---request-exposed-credentials-for-my-e-mail-address) for fetching the actual credentials behind an e-mail address.

## 002 - Check if my friends/family credentials have been leaked

Similar to [use case #001](#001---check-if-my-credentials-are-leaked), but in this scenario I would like to build a query composed of my friends/family e-mails.

**Inputs**:

- 1..* E-mail addresses

**Outputs**:

- 0..* Leak references, grouped by e-mail address

## 003 - List all leaks

Apart from checking if user credentials have been exposed, it's also pretty important to raise awareness on the hoarded leaks, as that allows users to be informed on the period leaks were exposed.

**Inputs**:

- None

**Outputs**:

- 1..* Leak references

## 004 - List most recent leaks

Similar to [use case #003](#003---list-all-leaks), but in this scenario the user would like to filter the leaks by exposed date, retrieving the most recent ones first.

**Inputs**:

- None

**Outputs**:

- 1..* Leak references, sorted by most recent exposed date

## 005 - List all affected platforms

Similar to [use case #003](#003---list-all-leaks), the user would also like to know in specific all the platforms that have been affected. Again, this helps raising awareness on the security quality of the platforms users use.

**Inputs**:

- None

**Outputs**:

- 1..* Platform references

## 006 - List most recent affected platforms

Similar to [use case #004](#004---list-most-recent-leaks) [#005](#005---list-all-affected-platforms), but sorted by leak exposed date.

**Inputs**:

- None

**Outputs**:

- 1..* Platform references

## 007 - Subscribe to new leaks

Even if a user finds that he hasn't been affected yet, he would like to be notified whenever new leaks are imported in the database.

**Inputs**:

- 1x E-mail address

**Outputs**:

- 1x Subscription confirmation

## 008 - Subscribe to new leaks that affect me

Similar to [use case #007](#007---subscribe-to-new-leaks), but in this scenario the user would only like to be notified if he is affected.

**Inputs**:

- 1x E-mail address

**Outputs**:

- 1x Subscription confirmation

## 009 - Subscribe to new leaks that affect my friends/family 

Similar to [use case #007](#007---subscribe-to-new-leaks) and [#008](#008---subscribe-to-new-leaks-that-affect-me), but in this scenario the user would only like to be notified for a bulk of e-mails addresses.

**Inputs**:

- 1x E-mail address to receive notifications
- 1..* E-mail addresses to be found affected

**Outputs**:

- 1x Subscription confirmation

## 010 - Request exposed credentials for my e-mail address

TBD
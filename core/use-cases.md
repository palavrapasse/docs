# use-cases

This file keeps track of all use cases our product has in mind. We tend to describe them in both a product and technical level, so anyone can get a clear picture of the needed inputs and expected outputs for each them.

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
|[009 - Subscribe to new leaks that affect my friends/family ](#009---subscribe-to-new-leaks-that-affect-my-friendsfamily)|`Pub/Sub`|N/A|
|[010 - Request exposed credentials for my e-mail address](#010---request-exposed-credentials-for-my-e-mail-address)|`Query`|N/A|


## 001 - Check if my credentials are leaked

This use case is self-explanatory: **Given** my e-mail address, I would like to **find** if there are any **credentials** exposed in the database.

**Inputs**:

- 1x Email address

**Outputs**:

- 0..* Leak references

Please refer to [use case #010](#010---request-exposed-credentials-for-my-e-mail-address) for fetching the actual credentials behind an e-mail address.

## 002 - Check if my friends/family credentials have been leaked

## 003 - List all leaks

## 004 - List most recent leaks

## 005 - List all affected platforms

## 006 - List most recent affected platforms

## 007 - Subscribe to new leaks

## 008 - Subscribe to new leaks that affect me

## 009 - Subscribe to new leaks that affect my friends/family 

## 010 - Request exposed credentials for my e-mail address
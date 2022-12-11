# parsing-leaks-strategies

This file describes the parsing strategies, such as the file schemas and the rules to clean up the input data before inserting it into the database.

---

For now we accept the following file schemas in our import tool: 

1. `email:password`
2. `email,password`


Before inserting each leak entry in the database, we perform a cleanup of what we believe is trash and should not exist in the database. As such for e-mails, we use the `ParseAddress` function from the Go [built-in mail package](https://pkg.go.dev/net/mail) to validate whether or not an e-mail is valid. We also reject entries with e-mails or password whose length surpasses the limits imposed in the [data model](../core/data-model.md).
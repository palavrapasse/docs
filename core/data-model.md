# data-model

This file describes the relational data model that represents the system entities in the database.

---

Some design reasons we considered:

- Conceptualize `Credentials` table, which will hold references to user passwords. In the future, this table can serve to hold already computed hashes of the passwords, if we would want to serve the system as a fast lookup of hash passwords.
- Password is a unique column in the `Credentials` table. We made it this way to reduce database size. This will also enable faster lookups on queries.
- Since e-mail and password fields are queryable, we include separate tables for each one with their hash view, to prevent **SQL Injections**. We do not include them on the `User` and `Credentials` tables directly, because we may include additional hash values in the future. Right now we use the `SHA-256` cryptographic function, as no collisions have been found yet (and most likely won't ever be).
- We define auto-gen keys as primary keys instead of relying on domain identity keys. This is done to reduce database size, as primary keys are almost longer than 8 bytes, but long integer values are always 8 bytes each.
- `Affected Users` entity will be a view for fast access.

Note: We refer to generating the next available unique integer as `autogen` in the data model diagram, for primary key definition. Do not confuse with `AUTOINCREMENT` keyword from SQLite, we don't use it.

![entity relationship model describing database schema](src/002-data-model.drawio.svg)
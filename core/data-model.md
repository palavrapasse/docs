# data-model

This file describes the relational data model that represents the system entities in the database.

---

Some design reasons we considered:

- Conceptualize `Credentials` table, which will hold references to user passwords. In the future, this table can serve to hold already computed hashes of the passwords, if we would want to serve the system as a fast lookup of hash passwords.
- Password is a unique column in the `Credentials` table. We made it this way to reduce database size. This will also enable faster lookups on queries.
- We define auto-gen keys as primary keys instead of relying on domain identity keys. This is done to reduce database size, as primary keys are almost longer than 8 bytes, but long integer values are always 8 bytes each.
- Most many-to-many relationships defined in the domain model have a separate association table.
- `Affected Users` entity will be a view for fast access.

Note: We refer to generating the next available unique integer as `autogen` in the data model diagram, for primary key definition. Do not confuse with `AUTOINCREMENT` keyword from SQLite, we don't use it.

![entity relationship model describing database schema](src/002-data-model.drawio.svg)
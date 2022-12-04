# data-model

This file describes the relational data model that represents the system entities in the database.

---

Some design reasons we considered:

- Conceptualize `Credentials` table, which will hold references to user passwords. In the future, this table can serve to hold already computed hashes of the passwords, if we would want to serve the system as a fast lookup of hash passwords.
- We define auto-gen keys as primary keys instead of relying on domain identity keys. This is done to reduce database size, as primary keys are almost longer than 8 bytes, but long integer values are always 8 bytes each.
- Most many-to-many relationships defined in the domain model have a separate association table. The only exception is `Leak-Password`, since that relationship is already inferred by `LeakUser` table (`SELECT C.* FROM CREDENTIAL C, USERCREDENTIALS UC, LEAKUSER LU, WHERE LU.leakid = <leakid> AND LU.userid = UC.userid AND UC.credid = C.credid`). Instead, there will be a view to represent the `LeakPassword` table.
- `Affected Users` entity will be a view for fast access.


![entity relationship model describing database schema](src/002-data-model.drawio.svg)
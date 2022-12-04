# cross-cutting-concerns

This file keeps track of all cross-cutting concerns we took into consideration while designing the system.

---

Our top priorities for the system are that it is fast, is able to be embedded in small boards (e.g., `Raspberry Pi`), and of course, is secure from nasty attackers. Taking this into consideration, the following concerns arise:

## Performance

Performance is a top concern in any system and is hard to define metrics on what's performant or not. For now, we consider our system performant if API query replies take up to a maximum of **~3** seconds. To make this possible, we are relying on fast technologies as the base layer for performance:

- `Golang` - it's fast for now (and yes, we will take in consideration re-writting the system in Rust);
- `SQLite` - relational, fast and embedded.

## Security

We are dealing with leaked data, so to prevent any more leaks, we need a bulletproof system. There are three critical security points we must take into consideration:

- Physical Access;
- Remote Access;
- API Protection.

Our goal is to run the system on an isolated premise, so physical access is granted (let's hope so).

For remote access, we need to protect ourselves from any incoming connection that might execute code remotely, such as only allowing API connections (HTTPS) and being extra cautious with requests data deserialization. Using an embedded database will also suit perfectly here since only the system can connect to it.

For API protection, we will implement logical conditions that constrain access to the database, such as querying only hashed values (aka no sqli).

## Size Costs

Our database will contain a lot of leaks, so as expected, our database will be huge and will grow linearly. To reduce its size, we need to apply size reduction mechanisms. For now, we are using long integer incremental keys as the tables primary keys instead of domain identity keys, since we will need to reference them on multiple tables. Although being an extra key in the database, this will help reduce its size since a long integer is always `8 bytes`, but an identity key is almost never equal to or less than 8 bytes (e.g., emails). Please refer to [data-model](data-model.md) document for all major design decisions considered.

## Networking

There are two major concerns in networking: the amount of data transferred to clients and being able to sniff data. Employing HTTPS-only connections will solve the sniff issue, but for data transfer, we will need to throttle the number of requests a client can do. In the [throttle](throttle.md) document, you can find realistic throttling rules we applied for each incoming request.
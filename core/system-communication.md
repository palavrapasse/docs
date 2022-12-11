# system-communication

This file provides an overview of all the components the system composes and how they connect to each other. Please refer to the diagram below as an high-level picture of the system. We try to depict everything we use on this diagram, so everyone can fully understand the system data flows.

---

|Identifier|Scope|Description|
|----------|-----|-----------|
|GitHub Pages|`CDN`|We use it to serve our webapp in a free manner, since it's a static website|
|palavrapasse|`Web App`|The web frontend that users use to query leaks information|
|query|`Web Service`|Query service that processes read/query operations from users|
|import|`Tool`|Tool that imports leaks files, performs sanitization and inserts them in the database|
|LeaksDB|`Database`|Our beloved SQLite database that registers leaks data|

![system communication as UML component diagram](src/003-system-communication.drawio.svg)
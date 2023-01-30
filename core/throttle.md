# throttle

This file keeps track of the decisions taken related to request throttling imposed on 1st level APIs, in order to prevent excess network requests and application level **DDoS** attacks. The table below describes the conditions and maximum number of requests per time period for each API endpoint.

---

|Endpoint|Method|Max Requests|Time Period|Conditions|
|--------|------|------------|-----------|----------|
|`leaks`|`GET`|**3**|*5 seconds*|IP address|
|`leaks/subscribe`|`POST`|**1**|*5 seconds*|IP address|
|`platforms`|`GET`|**3**|*5 seconds*|IP address|

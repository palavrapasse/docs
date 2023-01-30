# throttle

This file keeps track of the decisions taken related to request throttling imposed on 1st level APIs, in order to prevent excess network requests and application level **DDoS** attacks. The table below describes the conditions and the maximum number of requests per time period for each API endpoint.

---

|Endpoint|Method|Max Requests|Time Period|Conditions|
|--------|------|------------|-----------|----------|
|`leaks`|`GET`|**3**|*5 seconds*|IP address|
|`leaks/subscribe`|`POST`|**1**|*5 seconds*|IP address|
|`platforms`|`GET`|**3**|*5 seconds*|IP address|

Note: If a user exceeds the maximum number of conditions based on the endpoint criteria, it will be throttled for **30** seconds, and subsequent API calls will respond with a `429 Too Many Requests` status code. Also, any user that performs more than **50** requests in any endpoint per time period will have his IP blocked in the API server.
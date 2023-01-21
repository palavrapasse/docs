# default-information

This file describes the values to be used in case of not knowing the exact information of a leak.

---

The following table describes the possible default values a leak can accept:

|Concept|Default Values|
|-------|--------------|
|Bad Actor|`UNKNOWN`|
|Context|`BREACH FORUM COMBOLIST`, `UNKNOWN`|
|Platform|`BREACH FORUM`, `UNKNOWN`|
|Share Date|`0`|

Note: the webfrontend shall display the default share date as `UNKNOWN`. Also, it should be clearly visible what's a default value and what's not, so the user is not tricked.
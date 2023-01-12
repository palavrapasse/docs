# leak-discovery-mechanism

This file describes the different leak discovery mechanisms analysed, and the mechanism chosen.

---


## Trigger/Notification from Database

The first approach analysed was the notification when the database changed. With this, we discovered the concept of `Data Change Notification` (DCN), so clients can receive notifications when a table is updated.

The SQLite provides a function that supports the DCN. It registers a callback function with the database connection to be invoked whenever a row is updated, inserted or deleted in a rowid table [1]. 
The callbacks are installed per connection and only react to operations performed on the same connection [2].

With this being said, this approach does not fit what we want since the tool that changes the database (**import**) is not the same as the application that wants to be notified (**subscribe**). 

## Polling information from Database

The second approach analysed was the polling of information from the database. In other words, **subscribe** service will from time to time call the database to get the new leaks.

For this approach, we would need to start storing the date of the import, so **subscribe** will only get from the database the leaks inserted since the last search.

## Notification from import

Lastly, we thought of **import** notifying **subscribe** of the new leak inserted. For instance, after **import** stores a new leak, it notifies **subscribe** of the new leak (providing the inserted leak id), so **subscribe** can then validate if the emails that have subscriptions were affected by the new leak.

## Conclusions

The last approach is the one we choose to implement.

The first was not considered as explained before. Between the second and third approaches we choose the last because we believe this is the best one at this moment. 

The second approach would be calling the database too many times considering that right now there won't be too many imports of leaks. With the third approach, we will avoid unneeded calls to the database, and the notification of the subscribed emails will be almost instantly with the import of new leaked information.

## Sources

[1] https://www.sqlite.org/c3ref/update_hook.html

[2] https://sqlite-users.sqlite.narkive.com/y8HVpHAZ/sqlite3-update-hook-does-not-get-called-when-other-app-updates-shared-db

CREATE TABLE IF NOT EXISTS "UserCredentials" (
    "credid" INTEGER NOT NULL PRIMARY KEY,
    "userid" INTEGER NOT NULL PRIMARY KEY,
    FOREIGN KEY("userid") REFERENCES User("userid"),
    FOREIGN KEY("credid") REFERENCES Credentials("credid")
);
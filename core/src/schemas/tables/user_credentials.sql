CREATE TABLE IF NOT EXISTS "UserCredentials" (
    "credid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    PRIMARY KEY ("credid", "userid"),
    FOREIGN KEY("userid") REFERENCES User("userid"),
    FOREIGN KEY("credid") REFERENCES Credentials("credid")
);

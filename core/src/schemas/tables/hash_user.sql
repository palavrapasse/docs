CREATE TABLE IF NOT EXISTS "HashUser" (
    "userid" INTEGER PRIMARY KEY,
    "hsha256" CHAR(64) NOT NULL UNIQUE,
    FOREIGN KEY("userid") REFERENCES User("userid")
);
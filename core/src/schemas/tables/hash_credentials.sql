CREATE TABLE IF NOT EXISTS "HashCredentials" (
    "credid" INTEGER PRIMARY KEY,
    "hsha256" CHAR(64) NOT NULL UNIQUE,
    FOREIGN KEY("credid") REFERENCES Credentials("credid")
);
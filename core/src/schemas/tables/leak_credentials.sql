CREATE TABLE IF NOT EXISTS "LeakCredentials" (
    "credid" INTEGER NOT NULL,
    "leakid" INTEGER NOT NULL,
    PRIMARY KEY ("credid", "leakid"),
    FOREIGN KEY("credid") REFERENCES Credentials("credid"),
    FOREIGN KEY("leakid") REFERENCES Leak("leakid")
);
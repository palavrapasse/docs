CREATE TABLE IF NOT EXISTS "LeakUser" (
    "userid" INTEGER NOT NULL,
    "leakid" INTEGER NOT NULL,
    PRIMARY KEY ("userid", "leakid"),
    FOREIGN KEY("userid") REFERENCES User("userid"),
    FOREIGN KEY("leakid") REFERENCES Leak("leakid")
);
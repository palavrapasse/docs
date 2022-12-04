CREATE TABLE IF NOT EXISTS "LeakBadActor" (
    "baid" INTEGER NOT NULL,
    "leakid" INTEGER NOT NULL,
    PRIMARY KEY ("baid", "leakid"),
    FOREIGN KEY("baid") REFERENCES BadActor("baid"),
    FOREIGN KEY("leakid") REFERENCES Leak("leakid")
);
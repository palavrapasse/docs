CREATE TABLE IF NOT EXISTS "LeakPlatform" (
    "platid" INTEGER NOT NULL,
    "leakid" INTEGER NOT NULL,
    PRIMARY KEY ("platid", "leakid"),
    FOREIGN KEY("platid") REFERENCES Platform("platid"),
    FOREIGN KEY("leakid") REFERENCES Leak("leakid")
);
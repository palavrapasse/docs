CREATE TABLE IF NOT EXISTS "SubscriberAffected" (
    "affid" INTEGER NOT NULL,
    "subid" INTEGER NOT NULL,
    PRIMARY KEY ("affid", "subid"),
    FOREIGN KEY("affid") REFERENCES Affected("affid"),
    FOREIGN KEY("subid") REFERENCES Subscriber("subid")
);
CREATE VIEW IF NOT EXISTS "LeakCount"
AS
    SELECT COUNT(U.userid) as count, LU.leakid FROM User U, LeakUser LU
    WHERE LU.userid = U.userid
    GROUP BY LU.leakid;
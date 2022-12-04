CREATE VIEW IF NOT EXISTS "AffectedUsers"
AS
    SELECT U.userid, U.email, LU.leakid FROM User U, LeakUser LU
    WHERE LU.userid = U.userid;
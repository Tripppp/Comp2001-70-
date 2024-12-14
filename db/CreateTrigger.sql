CREATE TRIGGER CW2.LogTrailInsertion
ON CW2.Trails
AFTER INSERT
AS
BEGIN
    INSERT INTO CW1.TrailLog (TrailID, OwnerID, LogTimestamp)
    SELECT TrailID, OwnerID, GETDATE()
    FROM inserted;
END;
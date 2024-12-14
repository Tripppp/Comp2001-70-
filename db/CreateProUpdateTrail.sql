CREATE PROCEDURE CW2.UpdateTrail
    @TrailID INT,
    @TrailName VARCHAR(150),
    @Description TEXT,
    @OwnerID INT,
    @Difficulty VARCHAR(50),
    @Distance VARCHAR(50),
    @EstimatedTime VARCHAR(50)
AS
BEGIN
    UPDATE CW2.Trails
    SET 
        TrailName = @TrailName,
        Description = @Description,
        OwnerID = @OwnerID,
        Difficulty = @Difficulty,
        Distance = @Distance,
        EstimatedTime = @EstimatedTime
    WHERE TrailID = @TrailID;
END;
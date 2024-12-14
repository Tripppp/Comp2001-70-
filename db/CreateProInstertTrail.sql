CREATE PROCEDURE CW2.InsertTrail
    @TrailName VARCHAR(150),
    @Description TEXT,
    @OwnerID INT,
    @Difficulty VARCHAR(50),
    @Distance VARCHAR(50),
    @EstimatedTime VARCHAR(50)
AS
BEGIN
    INSERT INTO CW2.Trails (TrailName, Description, OwnerID, Difficulty, Distance, EstimatedTime)
    VALUES (@TrailName, @Description, @OwnerID, @Difficulty, @Distance, @EstimatedTime);
END;
CREATE TABLE CW2.TrailLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    TrailID INT NOT NULL,
    OwnerID INT NOT NULL,
    LogTimestamp DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (TrailID) REFERENCES CW1.Trails(TrailID),
    FOREIGN KEY (OwnerID) REFERENCES CW1.Users(UserID)
);
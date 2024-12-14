CREATE VIEW CW2.TrailView AS
SELECT 
    T.TrailID,
    T.TrailName,
    T.Description,
    T.Difficulty,
    T.Distance,
    T.EstimatedTime,
    L.Latitude,
    L.Longitude,
    LD.City,
    LD.County,
    LD.Country
FROM 
    CW2.Trails AS T
JOIN 
    CW2.Locations AS L ON T.TrailID = L.TrailID
JOIN 
    CW2.LocationDetails AS LD ON L.PlotID = LD.PlotID;
INSERT INTO CW2.Users (UserName, UserEmail, Role)
VALUES 
('Grace Hopper', 'Grace@plymouth.ac.uk', 'Admin'),
('Tim Burners-Lee', 'Tim@plymouth.ac.uk', 'User'),
('Josh Browning', 'Josh@plymouth.ac.uk', 'User');

INSERT INTO CW2.Trails (TrailName, Description, OwnerID, Difficulty, Distance, EstimatedTime)
VALUES 
('Plymbridge Circular', 'A scenic trail around...',1, 'Moderate', '5km', '2 hours'), 
('Plymouth Waterfront', 'Historic Waterfront...',2, 'Easy', '3km', '1.5 hour');

INSERT INTO CW2.Locations (TrailID, Latitude, Longitude)
VALUES 
(1, 50.123, -4.123),
(1, 50.124, -4.124),
(2, 50.321, -4.321),
(2, 50.322, -4.322);

INSERT INTO CW2.LocationDetails (PlotID, City, County, Country)
VALUES 
(1, 'Plymouth', 'Devon', 'England'),
(2, 'Falmouth', 'Cornwall', 'England');
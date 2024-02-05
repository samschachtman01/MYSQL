# Exercise 4
SELECT TripName
FROM Trip
WHERE Type = 'Biking' AND Distance > '20';

# Exercise 5
SELECT TripName 
FROM Trip
WHERE State = 'VT' AND MaxGrpSize > '10';

# Exercise 9
SELECT t.TripName, t.TripID, g.GuideNum
FROM Trip t
JOIN TripGuides tt ON tt.TripID = t.TripID
JOIN Guide g ON tt.GuideNum = g.GuideNum
WHERE g.GuideNum = 'BR01' AND Type = 'Biking';

# Exercise 13
SELECT c.FirstName, c.LastName, t.TripName, t.Type
FROM Customer c
JOIN Reservation r ON c.CustomerNum = r.CustomerNum
JOIN Trip t ON t.TripID = r.TripID
WHERE t.TripID IN (
	SELECT TripID
    FROM Reservation
    GROUP BY TripID
    HAVING COUNT(*) > 1
);


# Exercise 11
## Something that should be included within the data set is the ability to view who decided to cancel or continue with thier order. If they cancelled their order, there is a good chance that they are going to want a refund. That being said, the ability to see wether they recieved their refund and how much that refund was. 

# Chapter 2 Review: 7
## A primary key is used to identify and index each of the rows in a database in a unique fashion. Looking at the Colonial Adventure Tours database, there is a primary key for each of the five tables listed. For customer, the primary key is the Custmer Number. Each customer recieves their own unique number when they book a tour. For Guide, that key would be the Guide Number. Each set of customers are paired with a unique tour guide that will take them throughout the tour. For reservation, the key is your reservation ID. This allows you to have your place and secure your reservation for you alone. For the trip table, the Trip ID is the primary key because it allows you to book your trip how you personally want it. Lastly for the trip guides, the Guide number is the key here becuase it identifies the guide based on a unique number.



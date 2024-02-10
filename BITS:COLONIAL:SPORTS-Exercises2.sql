USE BITS;

### BITS EXERCISES

# 1: List the number and name of all the clients
SELECT ClientNum, ClientName
FROM Client;

# 2: List the complete tasks table
SELECT *
FROM Tasks;

### COLONIAL EXERCISES

USE Colonial;

# 3: List all trips that have type Paddling and distance greater than 6 miles
SELECT TripName
FROM Trip
WHERE Type = 'Hiking' AND Distance > '6';

# 4: List the na,e of each trip that has type Paddling or that is located in Vermont (VT)
SELECT TripName
FROM Trip
WHERE Type = 'Paddling' OR StartLocation = 'VT';

USE Sports;

### SPORTS EXERCISES
# 3: List the last name and first name of every therapist located in palm rivers

SELECT FirstName, LastName
FROM Therapist
WHERE City = 'Palm Rivers';

# 4: List the last name and first name of every therapist not located in palm rivers
SELECT FirstName, LastName
FROM Therapist
WHERE City != 'Palm Rivers';

# 5: List the patient number, first name, and last name or every patient whos balance is greater than or equal to $3,000
SELECT PatientNum, FirstName, Lastname
FROM Patient
WHERE Balance >= '3,000';

# 11: List the patient number, first name and last name for all patients that live in Palm Rivers, Waterville, or Munster
SELECT PatientNum, FirstName, LastName
FROM Patient
WHERE City = 'Palm Rivers'
OR City = 'Waterville'
OR City = 'Munster';

# 21: There are two ways to write the query in Step 11. Write the SQL command that you used and the write the alternate command that would also obtain the correct result

#My Command:
SELECT PatientNum, FirstName, LastName
FROM Patient
WHERE City = 'Palm Rivers'
OR City = 'Waterville'
OR City = 'Munster';

#Alternate Command
SELECT PatientNum, FirstName, LastName
FROM Patient
WHERE City IN ('Palm Rivers', 'Waterville', 'Munster');

# 22: What Where clause would you use if you wanted to find all the therapies where the description included the word "Training" anywhere in the description field?
SELECT Description
FROM Therapies
WHERE Description LIKE '%training%';





 





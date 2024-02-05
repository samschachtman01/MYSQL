# Exercise 4
SELECT Description
FROM Therapies th
JOIN Session s ON th.TherapyCode = s.TherapyCode
JOIN Therapist ths ON s.TherapistID = ths.TherapistID
WHERE ths.LastName = 'Wilder';

# Exercise 6

SELECT CONCAT(t.FirstName, ' ', t.LastName) AS therapist_name
FROM Therapist t
JOIN Session s ON t.TherapistID = s.TherapistID
JOIN Patient p ON s.PatientNum = p.PatientNum
WHERE p.FirstName = 'Ben' AND p.LastName = 'Odepaul';


# Exercise 8
SELECT Description
FROM Therapies t
JOIN Session s ON s.TherapyCode = t.TherapyCode
JOIN Patient p ON p.PatientNum = s.PatientNum
WHERE p.LastName = 'Baptist';



# Exercise 10
## The hourly rate data would be placed in the Session table, because that way everything that need to be known about the session is in one place. You know who the patient was, how long the patient was there, what the patient did during the session and how much the patient would need to pay after the session. Along with that, one thing they need to consider, in terms of payroll, is the total amount of hours worked during that pay period. That way at the end they have a running total of how many hours each therapist worked in total.

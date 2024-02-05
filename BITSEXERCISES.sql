# Exercise 1
SELECT CreditLimit
FROM Client
WHERE CreditLimit < '10000';

# Exercise 3
SELECT OrderNum
FROM WorkOrders
WHERE ClientNum = '322'
AND OrderDate = '2018-09-10';

# Exercise 4
SELECT wo.OrderDate, ol.ScheduledDate
FROM WorkOrders wo
JOIN OrderLine ol ON wo.OrderNum = ol.OrderNum
JOIN Tasks t ON ol.TaskID = t.TaskID
WHERE t.TaskID = 'SA44';

# Exercise 7
SELECT SUM(c.Balance) AS total_balance
FROM Client c
JOIN Consultant co ON c.ConsltNum = co.ConsltNum
WHERE co.LastName = 'Turner'





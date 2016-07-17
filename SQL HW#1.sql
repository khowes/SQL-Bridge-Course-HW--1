-- 1. Which destination in the flights database is the furthest distance away, based on information in the flights table. 
-- HNL is the furthest distance from NYC (4,983 miles away)

SELECT Dest, max(distance) FROM Flights GROUP BY Dest ORDER BY max(Distance) DESC;

-- 2. What are the different numbers of engines in the planes table?  1,2,3,4
SELECT Engines FROM Planes GROUP BY Engines;

-- For each number of engines, which aircraft have the most number of seats? 
Select Engines, Seats, Manufacturer, Model FROM Planes GROUP BY Engines, Manufacturer ORDER BY ENGINES, SEATS DESC;

-- Engine 	Seats	Manufacturer			Model
-- 1		16		Dehavilland				OTTER DHC-3
-- 2		182		Airbus					A320-214
-- 3		12		Avions Marcel Dassault	Mystere Falcon 900
-- 4		450		Boeing					747-451	


-- 3. Show the total number of flights.
-- 336,776

SELECT COUNT(*) FROM Flights;

-- 4. Show the total number of flights by airline (carrier).
SELECT Carrier, Count(*) FROM Flights GROUP BY Carrier;

9E	18460
AA	32729
AS	714
B6	54635
DL	48110
EV	54173
F9	685
FL	3260
HA	342
MQ	26397
OO	32
UA	58665
US	20536
VX	5162
WN	12275
YV	601


-- 5. Show all of the airlines, ordered by number of flights in descending order.

SELECT Carrier, Count(*) FROM Flights GROUP BY Carrier ORDER BY Count(*) DESC; 
UA	58665
B6	54635
EV	54173
DL	48110
AA	32729
MQ	26397
US	20536
9E	18460
WN	12275
VX	5162
FL	3260
AS	714
F9	685
YV	601
HA	342
OO	32

-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

SELECT Carrier, Count(*) FROM Flights GROUP BY Carrier ORDER BY Count(*) DESC LIMIT 5; 
UA	58665
B6	54635
EV	54173
DL	48110
AA	32729

-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of 
-- flights in descending order.

SELECT Carrier, Count(*) FROM Flights WHERE Distance >= 1000 GROUP BY Carrier ORDER BY Count(*) DESC LIMIT 5; 
UA	41135
B6	30022
DL	28096
AA	23583
EV	6248
-- 8. Create a question that 
-- (a) uses data from the flights database, and
-- (b) requires aggregation to answer it, and 
-- write down both the question, and the query that answers the question.

-- Do certain airlines focus more on shorter routes than longer routes? (Calculate the average distance of flights by carrier)

SELECT Carrier, avg(Distance) FROM Flights GROUP BY Carrier ORDER BY avg(Distance) DESC;
HA	4983.0000
VX	2499.4822
AS	2402.0000
F9	1620.0000
UA	1529.1149
AA	1340.2360
DL	1236.9012
B6	1068.6215
WN	996.2691
FL	664.8294
MQ	569.5327
EV	562.9917
US	553.4563
9E	530.2358
OO	500.8125
YV	375.0333
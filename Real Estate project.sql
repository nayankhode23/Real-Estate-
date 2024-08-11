CREATE TABLE RealEstate (
    Name VARCHAR(255),
    PropertyTitle VARCHAR(255),
    Price DECIMAL(18, 2),
    Location VARCHAR(255),
    TotalArea DECIMAL(10, 2),
    PricePerSQFT DECIMAL(10, 2),
    Description VARCHAR(MAX),
    NoBaths INT,
    Balcony INT
);

INSERT INTO RealEstate(Name, PropertyTitle, Price, Location, TotalArea, PricePerSQFT, Description, NoBaths, Balcony)
VALUES
    ('Property 101', 'Cozy Apartment', 180000, 'Delhi', 700, 257, 'Perfect for small families', 2, 1),
    ('Property 102', 'Lakefront Villa', 1500000, 'Mumbai', 3500, 428, 'Panoramic views of the lake', 5, 1),
    ('Property 120', 'Duplex House', 320000, 'Nagpur', 1800, 178, 'Two floors with garden space', 3, 0),
	('Property 1O3', 'Luxury Villa', 1000000, 'Pune', 2000, 500, 'Spacious villa with garden', 4, 1),
    ('Property 100', 'Apartment', 250000, 'Chennai', 800, 320, 'Modern apartment near downtown', 2, 0),
	('Property 104', 'Spacious Condo', 220000, 'Chennai', 900, 220, 'Ideal for urban living', 2, 1),
	('Property 121', 'Studio Apartment', 90000, 'Pune', 400, 225, 'Compact living space with great amenities', 1, 0),
    ('Property 122', 'Penthouse Suite', 2800000, 'Chennai', 5000, 560, 'Top-floor luxury with private terrace', 6, 1),
    ('Property 123', 'Townhouse', 450000, 'Chennai', 2200, 205, 'Charming townhouse near the park', 3, 1),
    ('Property 124', 'Beachfront Villa', 2100000, 'Nagpur', 4000, 525, 'Direct access to the beach', 4, 1),
    ('Property 125', 'Farmhouse', 320000, 'Pune', 3500, 91, 'Spacious land for gardening and relaxation', 2, 1),
    ('Property 126', 'High-Rise Condo', 550000, 'Mumbai', 1500, 367, 'Modern condo with city views', 2, 1),
    ('Property 127', 'Garden Apartment', 175000, 'Chennai', 1200, 146, 'Ground-floor unit with private garden', 2, 1),
    ('Property 128', 'Mountain Chalet', 380000, 'Pune', 2800, 136, 'Cozy retreat in the mountains', 3, 1),
    ('Property 129', 'Lakeview Cottage', 150000, 'Delhi', 800, 188, 'Quaint cottage near the water', 1, 0),
    ('Property 130', 'Investment Land', 750000, 'Mumbai', 50000, 15, 'Large plot for future projects', 1, 0);

-- 1: Total Number of Properties:

SELECT COUNT(*) AS TotalProperties
FROM RealEstate;

--2: Average Price per Square Foot:

SELECT AVG(Price_per_SQFT) AS AvgPricePerSQFT
FROM RealEstate;

--3: Highest Price Property:

SELECT Name, PropertyTitle, Price
FROM RealEstate
ORDER BY Price DESC
LIMIT 1;

--4: Lowest Price Property:

SELECT Name, PropertyTitle, Price
FROM RealEstate
ORDER BY Price ASC
LIMIT 1;

--5: SELECT Name, PropertyTitle
FROM RealEstate
WHERE Baths > 2;

--6: Properties with Balcony:
SELECT Name, PropertyTitle
FROM RealEstate
WHERE Balcony = 1;

--7: Top 5 Locations

SELECT Location, COUNT(*) AS PropertyCount
FROM RealEstate
GROUP BY Location
ORDER BY PropertyCount DESC
LIMIT 5;


--8: SELECT Location, AVG(Total_Area) AS AvgArea

SELECT Location, AVG(Total_Area) AS AvgArea
FROM RealEstate
GROUP BY Location;

--9: Properties with Descriptions Containing “Luxury”:

SELECT Name, PropertyTitle
FROM RealEstate
WHERE Description LIKE '%Luxury%';


--10: Properties Priced Above 10 lakh :

SELECT Name, PropertyTitle, Price
FROM RealEstate
WHERE Price > 1000000; 

--11: Sort properties by price in descending order:

SELECT * FROM RealEstate
ORDER BY Price DESC;
















create database Amazon_logistics;
use Amazon_logistics;

select * from delivery_data;

SELECT COUNT(*) AS Total_Orders
FROM delivery_data;

SELECT AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data;

SELECT AVG(Delivery_person_Ratings) AS Avg_Rating
FROM delivery_data;

SELECT Road_traffic_density,
       AVG(Time_taken_min) AS Avg_Time
FROM delivery_data
GROUP BY Road_traffic_density
ORDER BY Avg_Time DESC;

SELECT Weatherconditions,
       AVG(Time_taken_min) AS Avg_Time
FROM delivery_data
GROUP BY Weatherconditions
ORDER BY Avg_Time DESC;

SELECT City,
       AVG(Time_taken_min) AS Avg_Time
FROM delivery_data
GROUP BY City
ORDER BY Avg_Time DESC;

SELECT 
    CASE
        WHEN Delivery_person_Ratings >= 4.5 THEN 'Excellent'
        WHEN Delivery_person_Ratings >= 4.0 THEN 'Good'
        WHEN Delivery_person_Ratings >= 3.0 THEN 'Average'
        ELSE 'Poor'
    END AS Rating_Category,
    AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data
GROUP BY 
    CASE
        WHEN Delivery_person_Ratings >= 4.5 THEN 'Excellent'
        WHEN Delivery_person_Ratings >= 4.0 THEN 'Good'
        WHEN Delivery_person_Ratings >= 3.0 THEN 'Average'
        ELSE 'Poor'
    END
ORDER BY Avg_Delivery_Time;

SELECT multiple_deliveries,
       AVG(Time_taken_min) AS Avg_Time
FROM delivery_data
GROUP BY multiple_deliveries
ORDER BY Avg_Time DESC;

SELECT 
    CASE
        WHEN Delivery_Distance_km < 5 THEN 'Short Distance'
        WHEN Delivery_Distance_km < 10 THEN 'Medium Distance'
        WHEN Delivery_Distance_km < 20 THEN 'Long Distance'
        ELSE 'Very Long'
    END AS Distance_Category,
    AVG(Time_taken_min) AS Avg_Time
FROM delivery_data
GROUP BY 
    CASE
        WHEN Delivery_Distance_km < 5 THEN 'Short Distance'
        WHEN Delivery_Distance_km < 10 THEN 'Medium Distance'
        WHEN Delivery_Distance_km < 20 THEN 'Long Distance'
        ELSE 'Very Long'
    END
ORDER BY Avg_Time;

SELECT Delivery_person_Ratings,
       AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data
GROUP BY Delivery_person_Ratings
ORDER BY Avg_Delivery_Time;

SELECT 
CASE 
    WHEN Delivery_person_Ratings >= 4.5 THEN 'Excellent'
    WHEN Delivery_person_Ratings >= 4 THEN 'Good'
    WHEN Delivery_person_Ratings >= 3 THEN 'Average'
    ELSE 'Poor'
END AS Rating_Category,
AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data
GROUP BY 
CASE 
    WHEN Delivery_person_Ratings >= 4.5 THEN 'Excellent'
    WHEN Delivery_person_Ratings >= 4 THEN 'Good'
    WHEN Delivery_person_Ratings >= 3 THEN 'Average'
    ELSE 'Poor'
END;

SELECT multiple_deliveries,
       AVG(Time_taken_min) AS Avg_Time
FROM delivery_data
GROUP BY multiple_deliveries
ORDER BY multiple_deliveries DESC;

SELECT City,
       AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data
GROUP BY City
ORDER BY Avg_Delivery_Time DESC;

SELECT Delivery_person_ID,
       AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data
GROUP BY Delivery_person_ID
ORDER BY Avg_Delivery_Time ASC;

SELECT TOP 10 *
FROM delivery_data
ORDER BY Time_taken_min DESC;

SELECT Delivery_Distance,
       Road_traffic_density,
       AVG(Time_taken_min) AS Avg_Delivery_Time
FROM delivery_data
GROUP BY Delivery_Distance, Road_traffic_density
ORDER BY Avg_Delivery_Time DESC;

SELECT 
CASE
    WHEN Time_taken_min <= 20 THEN 'Fast'
    WHEN Time_taken_min BETWEEN 21 AND 35 THEN 'Normal'
    ELSE 'Slow'
END AS Delivery_Performance,
COUNT(*) AS Total_Orders
FROM delivery_data
GROUP BY 
CASE
    WHEN Time_taken_min <= 20 THEN 'Fast'
    WHEN Time_taken_min BETWEEN 21 AND 35 THEN 'Normal'
    ELSE 'Slow'
END;


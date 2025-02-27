-- SQL query to join dim_customers with dim_geography to enrich customer data with geographic information

SELECT 
    C.CustomerID,
    C.CustomerName,
    C.Email,
    C.Gender,
    C.Age,
    G.Country,
    G.City
FROM 
    CUSTOMERS AS C
   LEFT JOIN
-- RIGHT JOIN
-- INNER JOIN
-- FULL OUTER JOIN
    GEOGRAPHY AS G
ON 
    C.GeographyID = G.GeographyID;  -- Joins the two tables on the GeographyID field to match customers with their geographic information

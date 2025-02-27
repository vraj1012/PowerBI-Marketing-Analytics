-- SQL Query to clean whitespace issues in the ReviewText column

SELECT 
    ReviewID,
    CustomerID,
    ProductID, 
    ReviewDate, 
    Rating,  -- [SCALE : 1-5]
    -- Cleans up the ReviewText by replacing double spaces with single spaces to ensure the text is more readable and standardized
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    CUSTOMER_REVIEWS; 

/*Queries that provide answers to the questions for data verification.*/
-- Check for NULL values in important columns
SELECT * 
    FROM msme 
    WHERE skillset_id 
    IS NULL OR sales_id IS NULL OR msme_state_id IS NULL;

-- Check for duplicate entries
SELECT *, COUNT(*) FROM msme 
    GROUP BY skillset_id, sales_id, market_channel_id, promotion_id, performance_id, average_customers_id, major_challenges_id, ownership_id, msme_state_id 
    HAVING COUNT(*) > 1;

-- Check for NULL values in important columns
SELECT * 
    FROM msme_state 
    WHERE state IS NULL;

-- Check for duplicate entries
SELECT state, COUNT(*) 
    FROM msme_state 
    GROUP BY state 
    HAVING COUNT(*) > 1;

-- Check for NULL values in important columns
SELECT * 
    FROM sales_sector 
    WHERE sector IS NULL;

-- Check for duplicate entries
SELECT sector, COUNT(*) 
    FROM sales_sector 
    GROUP BY sector 
    HAVING COUNT(*) > 1;

-- Check for NULL values in important columns
SELECT * 
    FROM skill_gap 
    WHERE sector IS NULL;

-- Check for duplicate entries
SELECT sector, COUNT(*) 
    FROM skill_gap GROUP BY sector HAVING COUNT(*) > 1;

-- Check for NULL values in important columns
SELECT * FROM msme_sector WHERE years IS NULL;

-- Check for duplicate entries
SELECT years, COUNT(*) 
    FROM msme_sector 
    GROUP BY years 
    HAVING COUNT(*) > 1;




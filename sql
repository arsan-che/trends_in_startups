-- Retrieve all columns from the startups table
SELECT *
FROM startups;

-- Count the total number of companies in the startups table
SELECT COUNT(*)
FROM startups;

-- Calculate the total valuation of all companies
SELECT SUM(valuation)
FROM startups;

- Find the maximum amount raised by any startup
SELECT MAX(raised)
FROM startups;

-- Find the maximum amount raised by startups in the 'Seed' stage
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- Find the year the oldest company was founded
SELECT MIN(founded)
FROM startups;

-- Calculate the average valuation of all companies
SELECT AVG(valuation)
FROM startups;

-- Calculate the average valuation for each category
SELECT AVG(valuation)
FROM startups
GROUP BY category;

-- Calculate the average valuation for each category, rounded to two decimal places
SELECT ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

-- Calculate and order the average valuation for each category, rounded to two decimal places, from highest to lowest
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

-- Count the number of companies in each category
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- Count the number of companies in each category with more than three companies, ordered from most to least
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

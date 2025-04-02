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

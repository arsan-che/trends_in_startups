-- Retrieve all columns from the startups table
SELECT *
FROM startups;

-- Count the total number of companies in the startups table
SELECT COUNT(*)
FROM startups;

-- Calculate the total valuation of all companies
SELECT SUM(valuation)
FROM startups;

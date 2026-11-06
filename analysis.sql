-- Slide 1: Create Database and Table Structure
CREATE DATABASE australia_demographics_db;
USE retail_sales_db;

CREATE TABLE state_demographics (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(100),
    capital VARCHAR(100),
    postal_code VARCHAR(10),
    iso_code VARCHAR(10),
    population INT,
    area_km DECIMAL(12, 2),
    population_density DECIMAL(10, 7),
    reps_in_house INT,
    governor VARCHAR(100)
);


-- Slide 2: High-Level Country Performance (Executive Summary KPIs)
SELECT 
    SUM(population) AS total_australian_population,
    SUM(area_km) AS total_land_area_km,
    SUM(reps_in_house) AS total_house_representatives
FROM state_demographics;


-- Slide 3: Cross-Regional Performance Matrix
SELECT 
    state_name,
    capital,
    population,
    area_km,
    population_density,
    reps_in_house
FROM state_demographics
ORDER BY population DESC;


-- Slide 4: Population Percentage Breakdown by State
SELECT 
    state_name,
    population,
    (population / (SELECT SUM(population) FROM state_demographics WHERE population IS NOT NULL)) * 100 AS population_share_percent
FROM state_demographics
WHERE population > 0
ORDER BY population_share_percent DESC;


-- Slide 5: Deep Dive into Official States (Excluding Territories)
SELECT 
    state_name,
    capital,
    governor
FROM state_demographics
WHERE governor NOT IN ('None', 'Vacant') AND governor IS NOT NULL
ORDER BY state_name ASC;


-- Slide 6: Looking at Highest Density Regions (Density Ranking)
SELECT 
    state_name,
    population_density,
    population
FROM state_demographics
ORDER BY population_density DESC;


-- Slide 7: Land Area Concentration Analysis (Sparsely Populated Risk)
SELECT 
    state_name,
    area_km,
    population,
    (area_km / (SELECT SUM(area_km) FROM state_demographics)) * 100 AS land_share_percent
FROM state_demographics
ORDER BY area_km DESC;


-- Slide 8: House Representation Weight vs Population Mix
SELECT 
    state_name,
    reps_in_house,
    population,
    ROUND(population / reps_in_house, 0) AS citizens_per_representative
FROM state_demographics
WHERE reps_in_house IS NOT NULL AND reps_in_house > 0
ORDER BY citizens_per_representative ASC;


-- Slide 9: Average Metrics Across Active Regions
SELECT 
    AVG(population) AS average_regional_population,
    AVG(area_km) AS average_regional_land_size,
    AVG(reps_in_house) AS average_house_seats_per_region
FROM state_demographics
WHERE population > 0;


-- Slide 10: Low-Population Territories (Under 10,000 Residents)
SELECT 
    state_name,
    capital,
    population,
    area_km
FROM state_demographics
WHERE population < 10000
ORDER BY population ASC;


-- Slide 11: Summary of Unpopulated or Research Zones
SELECT 
    state_name,
    capital,
    area_km,
    governor
FROM state_demographics
WHERE population = 0 OR governor = 'None'
ORDER BY area_km DESC;

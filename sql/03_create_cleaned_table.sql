-- =========================================================
-- File: 03_create_cleaned_table.sql
-- Project: Cyclistic Bike Share Case Study
-- Purpose: Create cleaned, analysis-ready table from raw union view
-- Author: Keaton Craig
-- Date: Feb 26, 2025
-- =========================================================

--Create cleaned table keeping all old columns and adding new derived columns
CREATE OR REPLACE TABLE `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean` AS

SELECT *
FROM (
  SELECT
    *,
    ROUND((TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60.0), 2) AS ride_length_minutes, -- ride length in mins as decimal
    DATE(started_at) AS ride_date, -- start date
    FORMAT_TIMESTAMP('%A', started_at) AS day_of_week, -- day of week as name
    EXTRACT(YEAR FROM started_at) AS ride_year, -- year ride took place
    EXTRACT(MONTH FROM started_at) AS ride_month -- month ride took place
  FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_2025_all`
)
WHERE
  ride_length_minutes > 0
  AND ride_length_minutes <= 1440;


-- View of table for accuracy check
SELECT
  *
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`
LIMIT 10;


-- Ensuring correct number of rows (29 invalid durations and ~1808 0-min durations)
SELECT
  COUNT(*) AS rows_clean
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`;


-- Check for extreme outliers
SELECT
  MIN(ride_length_minutes) AS min_ride_length,
  MAX(ride_length_minutes) AS max_ride_length,
  AVG(ride_length_minutes) AS avg_ride_length
FROM
  `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`;

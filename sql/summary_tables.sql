-- =========================================================
-- File: 05_summary_tables.sql
-- Project: Cyclistic Bike Share Case Study
-- Purpose: Create summary tables for use in Tableau
-- Author: Keaton Craig
-- Date: Mar 2, 2025
-- =========================================================


-- Ride length by member type
SELECT
  member_casual,
  ROUND(AVG(ride_length_minutes),2) AS avg_ride_length_minutes,
  APPROX_QUANTILES(ride_length_minutes, 100)[OFFSET(50)] AS median_ride_length_minutes
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`
GROUP BY
member_casual;


-- Rides by day of week
SELECT 
  EXTRACT(DAYOFWEEK FROM ride_date) as dow_num,
  day_of_week,
  member_casual,
  COUNT(*) AS num_rides,
  ROUND(AVG(ride_length_minutes),2) AS avg_ride_length_minutes
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`
GROUP BY
  dow_num,
  day_of_week,
  member_casual
ORDER BY
  dow_num,
  member_casual;


-- Rides by month (seasonality)
SELECT
  ride_month,
  member_casual,
  COUNT(*) AS num_rides,
  ROUND(AVG(ride_length_minutes),2) AS avg_ride_length_minutes
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`
GROUP BY
  ride_month,
  member_casual
ORDER BY
  ride_month,
  member_casual;

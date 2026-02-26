-- =========================================================
-- File: 04_exploratory_analysis.sql
-- Project: Cyclistic Bike Share Case Study
-- Purpose: Exploratory analysis of tripdata_2025_clean table
-- Author: Keaton Craig
-- Date: Feb 26, 2025
-- =========================================================

-- Query to determine differences in ride lengths between casual riders and members
SELECT
  member_casual AS member_type,
  COUNT(*) AS num_rides,
  ROUND(AVG(ride_length_minutes),2) AS avg_ride_length_mins,
  -- 100 divides into 100 percentiles, offset(50) = 50th percentile, or median
  APPROX_QUANTILES(ride_length_minutes, 100)[OFFSET(50)] AS median_ride_length 
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`
GROUP BY
  member_casual;


--NOTE: Inlcuding avg ride length and median ride length lets us compare the two to see if outliers are heavily influencing these metrics


-- Query to determine how casual riders and members differ based on day of the week
SELECT
  EXTRACT(DAYOFWEEK FROM ride_date) AS dow_num, -- We want to order by numeric day of week instead of alphabetical to help with visualization
  member_casual,
  day_of_week,
  COUNT(*) AS num_rides,
  ROUND(AVG(ride_length_minutes),2) AS avg_ride_length_mins
FROM `cyclistic-case-study-488517.cyclistic_clean.tripdata_2025_clean`
GROUP BY
  dow_num,
  day_of_week,
  member_casual
ORDER BY
  dow_num,
  member_casual;

-- Casual riders seem to be heavily weekend-driven, while members are weekday-heavy

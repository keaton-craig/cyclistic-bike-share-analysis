-- =========================================================
-- File: 02_data_integrity_checks.sql
-- Project: Cyclistic Bike Share Case Study
-- Purpose: Check for null values in all columns of combined view
-- Author: Keaton Craig
-- Date: Feb 26, 2025
-- =========================================================

-- Create CASE statement for each column to SUM the num of NULLS for each column
-- Could also use COUNTIF(colname IS NULL)
SELECT
  SUM(CASE WHEN ride_id IS NULL THEN 1 ELSE 0 END) AS num_ride_id_null,
  SUM(CASE WHEN rideable_type IS NULL THEN 1 ELSE 0 END) AS num_rideable_type_null,
  SUM(CASE WHEN started_at IS NULL THEN 1 ELSE 0 END) AS num_started_at_null,
  SUM(CASE WHEN ended_at IS NULL THEN 1 ELSE 0 END) AS num_ended_at_null,
  SUM(CASE WHEN start_station_name IS NULL THEN 1 ELSE 0 END) AS num_start_station_name_null,
  SUM(CASE WHEN start_station_id IS NULL THEN 1 ELSE 0 END) AS num_start_station_id_null,
  SUM(CASE WHEN end_station_name IS NULL THEN 1 ELSE 0 END) AS num_end_station_name_null,
  SUM(CASE WHEN end_station_id IS NULL THEN 1 ELSE 0 END) AS num_end_station_id_null,
  SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS num_start_lat_null,
  SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS num_start_lng_null,
  SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS num_end_lat_null,
  SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS num_end_lng_null,
  SUM(CASE WHEN member_casual IS NULL THEN 1 ELSE 0 END) AS num_member_casual_null
FROM
  `cyclistic-case-study-488517.cyclistic_raw.tripdata_2025_all`;

-- NOTE: For this case study, we primarily care about member type and duration, so these NULLS are ok and do not need to be removed

-- Check for invalid ride durations
SELECT
  COUNTIF(ended_at < started_at) AS num_invalid_durations
FROM
  `cyclistic-case-study-488517.cyclistic_raw.tripdata_2025_all`;
